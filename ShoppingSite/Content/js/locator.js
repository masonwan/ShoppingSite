(function () {
	var baseUrl = location.href.replace(/\/[Ss]tore.*/, '');
	console.log('Start!');
	getStores();

	var userLoc = null, stores = [];
	var map, infowindow;

	function getStores() {
		console.log('get stores');

		var url = location.href.replace(/Store(\/[Ii]ndex)?.*/, '') + 'Store/GetStores';
		var setting = {
			success: function (data) {
				stores = data;
				getUserLocation();
			},
			error: function (jqXHR, textStatus, errorThrown) {
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			},
			timeout: 10000
		};
		$.ajax(url, setting);
	};

	function getUserLocation() {
		console.log('getUserLocation');

		var query = getURLParameter('storeQuery');

		if (typeof query !== "undefined" && query !== null && query !== 'null') {
			console.log('use query: ' + query);

			var geocoder = new google.maps.Geocoder();

			geocoder.geocode({
				address: query
			}, function (result, status) {
				console.log(result);
				console.log(status);

				if (status === 'OK' && result.length > 0) {
					console.log('search geolocation succeeded');
					var temp = result[0].geometry.location;
					userLoc = { lat: temp.Qa, lng: temp.Ra };

					var spanElement = $('#status');
					spanElement.addClass('success');
					spanElement.html(result[0].formatted_address);

					setGoogleMap(userLoc);
					return;
				}

				console.log('search geolocation failed');
				getUserLocationFromBrowser();
			});
		}
		else {
			getUserLocationFromBrowser();
		}
	};

	function getUserLocationFromBrowser() {
		console.log(navigator.geolocation);

		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(success, error);
		}
		else {
			getNearestStore();
		}
	}

	function success(position) {
		console.log('success');

		var spanElement = $('#status');
		spanElement.addClass('success');
		spanElement.html("Local geolocation detected");

		userLoc = { lat: position.coords.latitude, lng: position.coords.longitude };
		setGoogleMap(userLoc);
	};

	function error(msg) {
		console.log('Error: ' + msg);

		var s, _ref;
		s = $('#status');
		s.text("Cannot find your local location.");
		s.addClass('fail');

		setGoogleMap();
	};

	function setGoogleMap(loc) {
		console.log('setGoogleMap');

		var hasLocation = (typeof loc !== "undefined" && loc !== null);

		var mapcanvas = document.createElement('div');
		mapcanvas.id = 'mapcanvas';
		mapcanvas.style.height = '322px';
		mapcanvas.style.width = '370px';
		document.querySelector('article').appendChild(mapcanvas);

		var center = hasLocation ? new google.maps.LatLng(loc.lat, loc.lng) : new google.maps.LatLng(37.09024, -95.712891);
		var zoom = hasLocation ? 11 : 3;

		var option = {
			zoom: zoom,
			center: center,
			mapTypeControl: false,
			navigationControlOptions: {
				style: google.maps.NavigationControlStyle.SMALL
			},
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		map = new google.maps.Map(document.getElementById("mapcanvas"), option);
		infowindow = new google.maps.InfoWindow();

		getNearestStore(loc);
	};

	function getNearestStore(loc) {
		console.log('getNearestStore: ' + loc);

		var hasLocation = (typeof loc !== "undefined" && loc !== null);

		if (hasLocation) {
			for (index in stores) {
				var store = stores[index];
				distance = calculateDistance(loc, { lat: store.Latitude, lng: store.Longitude });
				store.Distance = distance;
			}

			stores.sort(function (a, b) { return parseFloat(a.Distance) - parseFloat(b.Distance) });
		}

		var html = '<ul>';
		var st = document.querySelector('#nearest');

		for (var index = 0, _len = stores.length; index < _len && (hasLocation === false || index < 10); index++) {
			var store = stores[index];
			var classname = "";
			html = html + '<li><aside class="width300 left"><strong class="txt14">' + store.Name + '</strong><br>' + store.Address + '<br>' + store.Phone + '</aside>';

			if (hasLocation) {
				html += '<aside class="width130 left">' + store.Distance + ' miles<br />';
				var maplink = 'http://maps.google.com/maps?f=d&hl=en&geocode=&daddr=' + store.Latitude + ',%20' + store.Longitude + '%20&saddr=' + loc.lat + ',%20' + loc.lng;
				html += '<a href="' + maplink + '" target="_blank" class="left mart-10">Show me the direction</a>';
			}

			html += '</aside><div class="clear">&nbsp;</div><strong>Parking</strong><div class="clear"></div><aside class="parking">';

			if (store.HasIndoor) {
				html = html + '<img src="' + baseUrl + '/Content/images/right.png" class="absmiddle"> Indoor';
				classname = "marl-30";
			}

			if (store.HasOutdoor) {
				html = html + '<img src="' + baseUrl + '/Content/images/right.png" class="absmiddle ' + classname + '"> Outdoor';
			}

			if (store.HasStreet) {
				html = html + '<img src="' + baseUrl + '/Content/images/right.png" class="absmiddle ' + classname + '"> Street';
			}

			html += '</aside></li>';
			var info = "<b>" + store.Name + "</b><br />" + store.Address + "<br />" + store.Phone;

			if (hasLocation)
				addMarker({ lat: store.Latitude, lng: store.Longitude }, false, store.Name, info);
		}

		if (hasLocation)
			addMarker(loc, true, null, "Your Location Here!!");

		html += '</ul>';
		st.innerHTML = html;
	}

	function calculateDistance(loc, storeLoc) {
		var R = 6371;
		var dLat = degreeToRadian(storeLoc.lat - loc.lat);
		var dLong = degreeToRadian(storeLoc.lng - loc.lng);

		var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.cos(degreeToRadian(loc.lat)) * Math.cos(degreeToRadian(storeLoc.lat)) * Math.sin(dLong / 2) * Math.sin(dLong / 2);
		var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
		var d = R * c;
		d = (d / 1.6);

		return Math.round(d);
	}

	function degreeToRadian(x) {
		return x * Math.PI / 180;
	}

	function addMarker(loc, isBlue, title, info) {
		var imageUrl = baseUrl + ((isBlue == 1) ? "/Content/images/blue-dot.png" : "/Content/images/pink-dot.png");

		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(loc.lat, loc.lng),
			map: map,
			icon: imageUrl
		});

		google.maps.event.addListener(marker, 'click', (function (marker) {
			return function () {
				infowindow.setContent(info);
				infowindow.open(map, marker);
			}
		})(marker));
	}

	function getURLParameter(name) {
		return decodeURI((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]);
	}
})();