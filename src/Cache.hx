package;

import sys.FileSystem;
import haxe.Unserializer;
import haxe.Serializer;
import haxe.crypto.Md5;
import sys.io.File;

class Cache {
	// Path->Hash, prevent writing files that don't need to be written.
	private var fileHashes:Map<String, String> = [];

	// allow for migration when the cache changes or to discard the cache all together.
	private var version:Int = 1;

	// the singleton cache
	private static var cache:Cache = new Cache();
	private static var usingCache:Bool = true;
	public static final CURRENT_VERSION = 1;

	/**
	 * Allows you to disable the cache and any operations it does.
	 * @param state if you want to enable or disable the cache.
	 */
	public static function setUseCache(state:Bool) {
		usingCache = state;
	}

	/**
	 * Checks the hash that is in the cache and only writes if it doesn't match.
	 * Useful for preventing overwriting files that don't need to be.
	 * @return Only returns True if the function has written anything.
	 */
	public static function checkHashAndWrite(path:String, content:String):Bool {
		if (!usingCache) {
			File.saveContent(path, content);
			return true;
		}

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
	public static function saveCache(path:String) {
		if (!usingCache) {
			return;
		}

		var serialized = Serializer.run(cache);
		File.saveContent(path, serialized);
	}

	/**
	 * Load the cache
	 * @param path location to load the cache from
	 */
	public static function loadCache(path:String) {
		try {
			if (!usingCache) {
				return;
			}

			if (!FileSystem.exists(path)) {
				return; // silently skip loading the cache, as it isn't a fatal problem.
			}

			var content = File.getContent(path);
			var unserialized:Cache = Unserializer.run(content);

			if (unserialized.version != CURRENT_VERSION) {
				Sys.println("Cache: mismatching version! new cache will be used.");
			}

			if (unserialized is Cache) {
				cache = unserialized;
				return;
			}

			Sys.println("Cache: cache is corrupted! new cache will be used.");
		} catch (e:Dynamic) {
			Sys.println("Cache: parsing error, " + Std.string(e));
		}
	}

	// empty constructor
	public function new() {}
}
