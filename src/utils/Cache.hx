package utils;

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
	static var usingCache:Bool = false;
	public static final CURRENT_VERSION = 1;

	/**
	 * Checks the hash that is in the cache and only writes if it doesn't match.
	 * Useful for preventing overwriting files that don't need to be.
	 * @return Only returns True if the function has written anything.
	 */
	public function checkHashAndWrite(path:String, content:String):Bool {
		if (!usingCache) {
			File.saveContent(path, content);
			return true;
		}

		var currentHash = Md5.encode(content);
		var cachedHash = fileHashes[path];

		if (currentHash == cachedHash) {
			return false;
		}

		fileHashes[path] = currentHash;
		File.saveContent(path, content);
		return true;
	}

	/**
	 * Store the cache
	 * @param path location to store the cache at
	 */
	public function saveCache(path:String) {
		if (!usingCache) {
			return;
		}

		var serialized = Serializer.run(this);
		File.saveContent(path, serialized);
	}

	/**
	 * Load the cache
	 * @param path location to load the cache from
	 */
	public static function loadCache(path):Cache {
		if (!usingCache)
			return new Cache();
		final path = haxe.io.Path.join([path, '.go2hx_cache']);
		try {
			if (!FileSystem.exists(path)) {
				return new Cache(); // silently skip loading the cache, as it isn't a fatal problem.
			}

			var content = File.getContent(path);
			var unserialized:Cache = Unserializer.run(content);

			if (unserialized.version != CURRENT_VERSION) {
				Sys.println("Cache: mismatching version! new cache will be used.");
			}

			if (unserialized is Cache) {
				return unserialized;
			}

			Sys.println("Cache: cache is corrupted! new cache will be used.");
		} catch (e:Dynamic) {
			Sys.println("Cache: parsing warning, " + Std.string(e));
		}
		return null;
	}

	// empty constructor
	public function new() {}
}
