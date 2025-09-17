package gen;


import sys.FileSystem;
import haxe.Unserializer;
import haxe.Serializer;
import haxe.crypto.Md5;
import sys.io.File;

class OutputCache {
	// Path->Hash, prevent writing files that don't need to be written.
	private var fileHashes:Map<String, String> = [];

	/**
	 * Checks the hash that is in the cache and only writes if it doesn't match.
	 * Useful for preventing overwriting files that don't need to be.
	 * @return Only returns True if the function has written anything.
	 */
	public static function checkHashAndWrite(cache:OutputCache, path:String, content:String):Bool {

		var currentHash = Md5.encode(content);
		var cachedHash = cache.fileHashes[path];

		if (currentHash == cachedHash) {
			return false;
		}

		cache.fileHashes[path] = currentHash;
		File.saveContent(path, content);
		return true;
	}

	/**
	 * Store the cache
	 * @param path location to store the cache at
	 */
	public static function saveCache(cache:OutputCache, path:String) {
		var serialized = Serializer.run(cache);
        final path = haxe.io.Path.join([path, '.go2hx_output_cache']);
		File.saveContent(path, serialized);
	}

	/**
	 * Load the cache
	 * @param path location to load the cache from
	 */
	public static function loadCache(path:String):OutputCache {
		final path = haxe.io.Path.join([path, '.go2hx_output_cache']);
		try {
			if (!FileSystem.exists(path)) {
				return new OutputCache(); // silently skip loading the cache, as it isn't a fatal problem.
			}

			var content = File.getContent(path);
			var unserialized:OutputCache = Unserializer.run(content);

			if (unserialized is OutputCache) {
				return unserialized;
			}
			Sys.println("Cache: cache is corrupted! new cache will be used.");
		} catch (e:Dynamic) {
			Sys.println("Cache: parsing error, " + std.Std.string(e));
		}
        return new OutputCache();
	}

	// empty constructor
	public function new() {}
}