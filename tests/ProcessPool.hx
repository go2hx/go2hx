package;

import sys.io.Process;

typedef ProcessData = {proc:Process, command:String};

class ProcessPool {
	var pool:Array<ProcessData> = [];
	var commands = [];
	var count = 0;

	public var complete:{code:Int, command:String} -> Void = null;

	public function new(count) {
		this.count = count;
	}

	public function run(command:String) {
		commands.push(command);
		get();
	}

	private function get() {
		if (count < pool.length || commands.length == 0)
			return;
		final command = commands.pop();
		pool.push({proc: new Process(command), command: command});
	}

	var removal = [];

	public function update() {
		if (pool.length == 0)
			return;
		removal = [];
		for (i in 0...pool.length) {
			var code = pool[i].proc.exitCode(false);
			if (code == null)
				continue;
			complete({code: code, command: pool[i].command});
			removal.push(pool[i]);
		}
		for (obj in removal) {
			pool.remove(obj);
			obj.proc.close();
			get();
		}
	}
}
