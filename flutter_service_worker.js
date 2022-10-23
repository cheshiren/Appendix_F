'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "a33a8e54f68365f793636d56b9bb5eb2",
"index.html": "97757b27ce235b395fc20b8c86ed3423",
"/": "97757b27ce235b395fc20b8c86ed3423",
"main.dart.js": "f4e3a08bcba55c031e6a056a618e674e",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "04b778acd536800b5c7fd6a36a2caa1d",
"icons/Icon-192.png": "2d3d95a04b4c10054b2ae2f0d7cb97a7",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "9c25c74bbe08e2d8d33f73765f5e56f6",
"manifest.json": "e251a7e7c9ab321a470d737a83a90172",
"assets/AssetManifest.json": "79f344a418e96a3b5f9ad5a444e2eee4",
"assets/NOTICES": "fb74816aa8d0e53e199982d2c66c6862",
"assets/FontManifest.json": "0527f234b717103688728a0682bbc080",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "8fd6a02a86a16178474c8fcd66444984",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/images/settings.png": "840fd7e3337c743046bf992ef18a10b8",
"assets/assets/images/map.png": "b87ba1d5ed98e100c925a7101606af4b",
"assets/assets/images/restart.png": "d3d2e3f3b2f6cb1e1a69b8b2529096f7",
"assets/assets/images/Emblema_FSB.png": "bf4dec2d9edee3eaae5b532bc480d5d7",
"assets/assets/images/photos/F8A.png": "3350fd3beb4bfd7abc66ff51219d3edf",
"assets/assets/images/photos/F8B.png": "fb1a9c7431c2f6a2455e211d775491d5",
"assets/assets/images/photos/F7.png": "7dc236b4ac432b825abe86e35e022b23",
"assets/assets/images/photos/F6.png": "35778f6399eb5319367287b3df79d305",
"assets/assets/images/photos/F4.png": "55b132fe9b4f1a02423d63eee24756c6",
"assets/assets/images/photos/F5.png": "653d36b82f3c8473e2cf68a71b8c0cf4",
"assets/assets/images/photos/F1.png": "5fa62ef49f429b7b65af140c46e28350",
"assets/assets/images/photos/F2.png": "fd3861af1a9cebfd11f54995b59adbb9",
"assets/assets/images/photos/F3.png": "144799fcf537521fb493d4d168ad5b10",
"assets/assets/images/back.png": "3c82301693d5c4140786184a06c23f7e",
"assets/assets/fonts/PT_Mono/PTMono-Regular.ttf": "844e8fa6bb3441effec73e976764c535",
"assets/assets/fonts/Anonymous_Pro/AnonymousPro-Regular.ttf": "1c0a292f3473dd6684c2cbee0f6ee5f3",
"assets/assets/fonts/Oooh_Baby/OoohBaby-Regular.ttf": "2d3cee10b218b6f30adb6738acfd48aa",
"assets/assets/fonts/Bad_script/BadScript-Regular.ttf": "8f858e6198620f0d75bf7facb046cab6",
"assets/assets/fonts/Caveat/Caveat-Regular.ttf": "04c3547e70bd8d53833d325c37f9621f",
"assets/assets/fonts/Orelega_One/OrelegaOne-Regular.ttf": "2368d1b6e238d613882d56ae92d2086e",
"assets/assets/fonts/Oswald/Oswald-Regular.ttf": "a7ccbd3cd9a9ff21ec41086dcc23ebe6",
"assets/assets/fonts/Minecart_LCD/minecartlcd.ttf": "793dec19a6e1dc0e8b6ba9b8bfb7b38f",
"assets/assets/fonts/Rubik/Rubik-Black.ttf": "f7672ebc1b97272bdcbb9212f05f263d",
"assets/assets/fonts/PT_Sans/PTSans-Regular.ttf": "5b127e9e1cedad57860a5bb8b2cc9d61",
"assets/assets/fonts/PT_Sans/PTSans-Bold.ttf": "7ce12caf9c41197f791da7e40970a69c",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
