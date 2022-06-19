import haxe.io.Bytes;
import sys.net.Host;
import sys.net.Socket;

#if hl
typedef Loop = hl.uv.Loop;
typedef Tcp = hl.uv.Tcp;
typedef Stream = hl.uv.Stream;
#else
class Loop {
	public var events:Array<Void->Void> = [];

	public function new() {}

	public static function getDefault():Loop
		return new Loop();

	public function run(mode:RunMode) {
		for (i in 0...events.length) {
			events[i]();
		}
	};
}

class Stream {
	var s:Socket = null;
	var loop:Loop;

	public var size:Int = 1;

	public function new(s, loop) {
		this.s = s;
		this.s.setBlocking(false);
		this.loop = loop;
	}

	public function write(b:Bytes, ?onWrite:Bool->Void) {
		s.setBlocking(true);
		s.output.writeBytes(b, 0, b.length);
		s.output.flush();
		s.setBlocking(false);
		if (onWrite != null)
			onWrite(true);
	}

	public function close() {
		s.close();
	}

	public function readStart(call:Bytes->Void) {
		loop.events.push(() -> {
			try {
				call(s.input.read(size));
			} catch (e) {
				trace(e);
			}
		});
	}
}

class Tcp {
	var loop:Loop;
	var s:Socket;
	var acceptClient:Socket = null;

	public function new(loop:Loop) {
		this.loop = loop;
		s = new Socket();
		s.setBlocking(false);
	}

	public function close() {
		s.close();
	}

	public function bind(host:Host, port:Int) {
		s.bind(host, port);
	}

	public function noDelay(b:Bool) {
		s.setFastSend(b);
	}

	public function listen(count:Int, connection:Void->Void) {
		s.listen(count);
		loop.events.push(() -> {
			if (acceptClient != null)
				return;
			try {
				acceptClient = s.accept();
				connection();
			} catch (e) {
				trace(e);
			}
		});
	}

	public function accept():Stream {
		final s = acceptClient;
		// acceptClient = null;
		return new Stream(s, loop);
	}
}

enum abstract RunMode(Int) to Int {
	/** Runs the event loop until there are no more active and referenced handles or requests. */
	var Default = 0;

	/** Poll for i/o once. Note that this mode blocks if there are no pending callbacks. */
	var Once = 1;

	/** Poll for i/o once but don't block if there are no pending callbacks. */
	var NoWait = 2;
}
#end
