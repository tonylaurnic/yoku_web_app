'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "5e790b7b411f1ebb645e99a0f0eea314",
"index.html": "777e9c4e8d55e167f1b535d46cbd7923",
"/": "777e9c4e8d55e167f1b535d46cbd7923",
"main.dart.js": "3d6f5e6517a4ac6f4ab5437c49ceed88",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ea09eb68627938b0ef0f546dad8f38b3",
".git/config": "7d2c7aa396675368ec7cb78fb695f9bd",
".git/objects/92/9bd174e1373fb547bb6dfd4b8f22a84187a193": "b99fb32c18f9bbc238eb67952ae9d0ce",
".git/objects/03/c66cc7a4f1ebbe1d65afc49e82be029cfd3b1d": "5246a842a7b2ef3a3d33647001543384",
".git/objects/32/02a27147f1c4f3d01f323e026fe07f8a1d931a": "b9e5022b24dd960e0c1fea82a3dc0ca1",
".git/objects/3d/3ee4a025d1a1fec87536562b0afd3dfab395d8": "218dfe4f265f5332ac4dc38e673346cc",
".git/objects/3d/2d0882277df51d8d042f2098bd5d3d8973af88": "b0e5a65404121eafa67fe2a40a5c1f15",
".git/objects/0e/1b16b929df2c8f2ed28ffcdcdbaa6f7cdf5a7d": "c188fece68947ce0350f6c9f4363a2e2",
".git/objects/9c/2e6c994b27276d279f056a53928ecb944332e6": "3af2393cfee4883a64e91040fc0fa9aa",
".git/objects/d7/d62357e163455b6b67cc6b2395cdbb561c4c2a": "2bcd737e7fa0ef0240d84b0e6334b470",
".git/objects/b4/d64c8951a263f3894f57995f768aae1da68b10": "e2a7e12b1bcb0ff2ba1974ad9a75cfc1",
".git/objects/a5/47d7530b17547f40e077669375b1875461b335": "9e2b85de372e6f80ffa977145f86f3c4",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ab/8b77a02b2f71427bc23d6c706978bcadb939cb": "f16b9476a8bc6f036e58a70b6052a4d7",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c0/1d1c39291edfd5a7402878514322cd752d1ad8": "9e187338bea50547cb4435af7ecb312b",
".git/objects/ca/295091b304e8ac5ee42b26dd571e1e8dcaaa61": "e0e169107ffec3557fb9697cd2512dc3",
".git/objects/fb/b0256dcb51cfc54ba6e9964ad5ef65fe14e479": "49ceb449986a30983b88a2f35325da83",
".git/objects/ec/e149198ca70cbc9f386475dc2b3be9d6d1d42d": "cdbf60d3d6a10e23930ea00244630dc8",
".git/objects/4e/f742aeb4ccaeaff857e20635fd347091ecf68f": "b21100f9ef3d4481922aa4385b5c6540",
".git/objects/27/9b6c40eaa6ba0c9a90556a3e0db5e26ce5500a": "1951bb4d8d144a503f3db851a8504c03",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/1f/473dff0abe12a406b83b361ad003c1224f1278": "16a331400f6d234cec354101616a6f83",
".git/objects/87/6f6d3e68302491589c4e0bb47fd6e158549dc1": "1ce379d6ec5d65afcf3330ac79caf5ca",
".git/objects/87/558bc2232b394b306c6061b4739d5d22e579fc": "c01e9656f18f70e41f287e39d3b7e7b0",
".git/objects/74/7ad7d4d2cce20b252fc6990516643abc83321f": "ce2a2a1276233b1628f538d13c37819c",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/28/5d3b3a65eb455d410c3bf31fccc8dbbc8cbdbc": "8f13b3e9424f71d09fc00a1d9e39692c",
".git/objects/8a/2d57344c6c435ccd22da64cbc8f3b70146703d": "befe4fbfa51766bfdedae5c1505cb7ac",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/10/101f60008f8de8a96d35aa45036954aa09676d": "030634bd384a5b021771cb86e068ee65",
".git/objects/75/126720b2c81cb9d47e134e632dce2889e16cdd": "faffebcd6c29f44218da202c071f105d",
".git/objects/81/f8da657f4d111d76b4d2cd5a7411b77310dc0d": "8b8ee3407d538b030f8eb735009c6074",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9a/29436b0a9b08b207c182a5c897a9461a0b43f5": "e1492d1b4059d2248b631707936a0da5",
".git/objects/5d/daacf2c6b269c55ebd2703e476cc1b3ed39408": "d30af7dfd305a4b907b42aa6fa8408f3",
".git/objects/91/298ee163e9fa137842e0f562a4ecd82641bb9e": "7e5efba1e7ab9f1d5cc2ef5ccac1f59c",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/objects/99/94bd46bbf2dd045cdacdb58cb2b7db1c2855a5": "fa4e5e4582a2e6701306d804a4296cc3",
".git/objects/55/bf34ecc515f530153293b5f29902e0e7a87b95": "2905f5c1dbf5d8c0d0527958a2573f2c",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/bf/b34b1d678c1de94ad5a4c659a165e3a8018c38": "1eff6aa3b513324b37786ae0a4a4accf",
".git/objects/b6/a9cce1189a82e4cf7701a43e7dba8bd2b7c0d4": "1c5d355f4e6eb5c4ee69e322284fd527",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/56d813c8a397d7ed06840bdb78b0814c5195cf": "0962b9188afe4ba188daff8ea5dca344",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/cc/d4980f05115c0fe3bfebcf0cedd4af498af6d1": "299500022d3c7a14181e146452836e35",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/f7/8b83d8622a64234847550a0f94de8f0e804d31": "b82927e01aceccc17c6d7bf7113754fb",
".git/objects/f1/6b586918ae57b838e8c23711d7ff36727d69ca": "75d81a07f217b8831742764c638708b6",
".git/objects/ce/ec110ad588b4a6b8d7966daeb26a47791a6436": "0e6eafa0c3584e1e0aae40e6db7b7d6a",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/1e/5419e468382fcc773c15642dd0e8e836a569f0": "f5c5542c57f2c45c980c2d58cd25dbbe",
".git/objects/24/cb169cdbf92e2312eb1ccce2bd9c9fe840cd3f": "3640580de7a7e1fbe93126adc187bf20",
".git/objects/49/7059adc0a0de1e61daf767d1a0f5ee4cc9bda4": "c05fa33080cb64d20ab356fd809bbe6b",
".git/objects/2b/2c3a562b375d8b8666585df340e8f3868f38a8": "92a5ead6e841d0afb413c30b02850499",
".git/objects/25/7256cef097eaca87da0cacd1ea6ca8537cba0f": "84bc601830ea58f7ebfa8f68e83467b7",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3f31b0dd2a38dbae50c49b588d381309",
".git/logs/refs/heads/master": "3f31b0dd2a38dbae50c49b588d381309",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/master": "593a94eef30d90535dcd7bd0d45fa98c",
".git/index": "73b95e5b37d20cb6a5eb80895feb4067",
".git/COMMIT_EDITMSG": "536e2824131ddb9f8ef077b84253246a",
"assets/AssetManifest.json": "5b9ee76c8f0fe3bc14dc9598e58095c1",
"assets/NOTICES": "49c1747a59d342e7768650ffa73fcaed",
"assets/FontManifest.json": "0a79c34e10dcf1213ebcd771764d575b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d8e9b6203ce2657c991f0b339ccb3a6d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "48ce1bb8a42776caa951cb782d277730",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "99f29024aee8f4672a47cc3a81b9b84a",
"assets/shaders/ink_sparkle.frag": "c9ee6605099dc7aaf4c099c41d8279b0",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/topmenu.jpg": "25c650a9ba3f87e0c9b1a734d43437d1",
"assets/assets/logo_app.png": "10f6866654cee509e73eb7efb86cfd7b",
"assets/assets/map.png": "4c0d5cd873213245c5d6a3c7060ddde7",
"assets/assets/home.JPG": "e320a30788e3df9b6a2858f15b63e919",
"assets/assets/M_PLUS_1p/MPLUS1p-Thin.ttf": "d0e322d42b4fe72f0f1d99707969cd2e",
"assets/assets/menu.jpg": "ea94a80481d6f060854d4a45f279ad00",
"assets/assets/tartare.JPG": "0b659bf358c1a7321805bbadb6d1b8d9",
"assets/assets/logo.JPG": "74b8e27a5876cd4aa3756d117716ae2b",
"assets/assets/4.jpg": "5ee1ed1ab62f0c0827ec44b8a072fba1",
"assets/assets/home2.jpg": "925ece90e2602309e9aff080f2c7f3d1",
"assets/assets/5.jpg": "6792596eab1a5da85e9a2ccfffbd2ce5",
"assets/assets/7.jpg": "dc5a2ff4e336c564693148d5670c289e",
"assets/assets/plate.PNG": "3273fb465e3d5826c02b5ff4ad27b3c5",
"assets/assets/plate.JPG": "15189c044e68df4d4e720126c13713be",
"assets/assets/1.jpg": "b1eb3ef87ea7b4712d041332de30569a",
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
