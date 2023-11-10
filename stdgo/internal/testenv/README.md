# Module: `stdgo.internal.testenv`

[(view library index)](../../stdgo.md)


# Overview



Package testenv provides information about what functionality
is available in different testing environments run by the Go team.  


It is an internal package because these details are specific
to the Go team's test setup \(on build.golang.org\) and not
fundamental to tests in general.  

# Index


- [Variables](<#variables>)

- [`function _findGOROOT():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-_findgoroot>)

- [`function _hasSymlink():{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_hassymlink>)

- [`function _syscallIsNotSupported(_err:stdgo.Error):Bool`](<#function-_syscallisnotsupported>)

- [`function _tryExec():stdgo.Error`](<#function-_tryexec>)

- [`function builder():stdgo.GoString`](<#function-builder>)

- [`function canInternalLink(_withCgo:Bool):Bool`](<#function-caninternallink>)

- [`function cleanCmdEnv(_cmd:stdgo.Ref<stdgo.os.exec.Cmd>):stdgo.Ref<stdgo.os.exec.Cmd>`](<#function-cleancmdenv>)

- [`function command(_t:stdgo.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.os.exec.Cmd>`](<#function-command>)

- [`function commandContext(_t:stdgo.testing.TB, _ctx:stdgo.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.os.exec.Cmd>`](<#function-commandcontext>)

- [`function cpuisSlow():Bool`](<#function-cpuisslow>)

- [`function goTool():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-gotool>)

- [`function goToolPath(_t:stdgo.testing.TB):stdgo.GoString`](<#function-gotoolpath>)

- [`function goroot(_t:stdgo.testing.TB):stdgo.GoString`](<#function-goroot>)

- [`function hasCGO():Bool`](<#function-hascgo>)

- [`function hasExternalNetwork():Bool`](<#function-hasexternalnetwork>)

- [`function hasGoBuild():Bool`](<#function-hasgobuild>)

- [`function hasGoRun():Bool`](<#function-hasgorun>)

- [`function hasLink():Bool`](<#function-haslink>)

- [`function hasParallelism():Bool`](<#function-hasparallelism>)

- [`function hasSrc():Bool`](<#function-hassrc>)

- [`function hasSymlink():Bool`](<#function-hassymlink>)

- [`function mustHaveBuildMode(_t:stdgo.testing.TB, _buildmode:stdgo.GoString):Void`](<#function-musthavebuildmode>)

- [`function mustHaveCGO(_t:stdgo.testing.TB):Void`](<#function-musthavecgo>)

- [`function mustHaveExec(_t:stdgo.testing.TB):Void`](<#function-musthaveexec>)

- [`function mustHaveExecPath(_t:stdgo.testing.TB, _path:stdgo.GoString):Void`](<#function-musthaveexecpath>)

- [`function mustHaveExternalNetwork(_t:stdgo.testing.TB):Void`](<#function-musthaveexternalnetwork>)

- [`function mustHaveGoBuild(_t:stdgo.testing.TB):Void`](<#function-musthavegobuild>)

- [`function mustHaveGoRun(_t:stdgo.testing.TB):Void`](<#function-musthavegorun>)

- [`function mustHaveLink(_t:stdgo.testing.TB):Void`](<#function-musthavelink>)

- [`function mustHaveParallelism(_t:stdgo.testing.TB):Void`](<#function-musthaveparallelism>)

- [`function mustHaveSymlink(_t:stdgo.testing.TB):Void`](<#function-musthavesymlink>)

- [`function mustInternalLink(_t:stdgo.testing.TB, _withCgo:Bool):Void`](<#function-mustinternallink>)

- [`function optimizationOff():Bool`](<#function-optimizationoff>)

- [`function skipFlaky(_t:stdgo.testing.TB, _issue:stdgo.GoInt):Void`](<#function-skipflaky>)

- [`function skipFlakyNet(_t:stdgo.testing.TB):Void`](<#function-skipflakynet>)

- [`function skipIfOptimizationOff(_t:stdgo.testing.TB):Void`](<#function-skipifoptimizationoff>)

- [`function skipIfShortAndSlow(_t:stdgo.testing.TB):Void`](<#function-skipifshortandslow>)

- [`function syscallIsNotSupported(_err:stdgo.Error):Bool`](<#function-syscallisnotsupported>)

- [`function writeImportcfg(_t:stdgo.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void`](<#function-writeimportcfg>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

# Variables


```haxe
import stdgo.internal.testenv.Testenv
```


```haxe
var _execPaths:stdgo.sync.Map_
```



path \-\> error  

```haxe
var _flaky:stdgo.Pointer<Bool>
```


```haxe
var _goBuildErr:stdgo.Error
```


```haxe
var _goBuildOnce:stdgo.sync.Once
```


```haxe
var _goToolErr:stdgo.Error
```


```haxe
var _goToolOnce:stdgo.sync.Once
```


```haxe
var _goToolPath:stdgo.GoString
```


```haxe
var _gorootErr:stdgo.Error
```


```haxe
var _gorootOnce:stdgo.sync.Once
```


```haxe
var _gorootPath:stdgo.GoString
```


```haxe
var _hasCgo:Bool
```


```haxe
var _hasCgoOnce:stdgo.sync.Once
```


```haxe
var _origEnv:stdgo.Slice<stdgo.GoString>
```



Save the original environment during init for use in checks. A test
binary may modify its environment before calling HasExec to change its
behavior \(such as mimicking a command\-line tool\), and that modified
environment might cause environment checks to behave erratically.  

```haxe
var _tryExecErr:stdgo.Error
```


```haxe
var _tryExecOnce:stdgo.sync.Once
```


```haxe
var sigquit:stdgo.os.Signal
```



Sigquit is the signal to send to kill a hanging subprocess.
On Unix we send SIGQUIT, but on non\-Unix we only have os.Kill.  

# Functions


```haxe
import stdgo.internal.testenv.Testenv
```


## function \_findGOROOT


```haxe
function _findGOROOT():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Testenv.hx#L372>)


## function \_hasSymlink


```haxe
function _hasSymlink():{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Testenv.hx#L690>)


## function \_syscallIsNotSupported


```haxe
function _syscallIsNotSupported(_err:stdgo.Error):Bool
```


[\(view code\)](<./Testenv.hx#L687>)


## function \_tryExec


```haxe
function _tryExec():stdgo.Error
```


[\(view code\)](<./Testenv.hx#L147>)


## function builder


```haxe
function builder():stdgo.GoString
```



Builder reports the name of the builder running this test
\(for example, "linux\-amd64" or "windows\-386\-gce"\).
If the test is not running on the build infrastructure,
Builder returns the empty string.  

[\(view code\)](<./Testenv.hx#L306>)


## function canInternalLink


```haxe
function canInternalLink(_withCgo:Bool):Bool
```



CanInternalLink reports whether the current system can link programs with
internal linking.  

[\(view code\)](<./Testenv.hx#L532>)


## function cleanCmdEnv


```haxe
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo.os.exec.Cmd>):stdgo.Ref<stdgo.os.exec.Cmd>
```



CleanCmdEnv will fill cmd.Env with the environment, excluding certain
variables that could modify the behavior of the Go tools such as
GODEBUG and GOTRACEBACK.  

[\(view code\)](<./Testenv.hx#L192>)


## function command


```haxe
function command(_t:stdgo.testing.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.os.exec.Cmd>
```



Command is like exec.Command, but applies the same changes as
testenv.CommandContext \(with a default Context\).  

[\(view code\)](<./Testenv.hx#L289>)


## function commandContext


```haxe
function commandContext(_t:stdgo.testing.TB, _ctx:stdgo.context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.os.exec.Cmd>
```


```
 CommandContext is like exec.CommandContext, but:
   - skips t if the platform does not support os/exec,
   - sends SIGQUIT (if supported by the platform) instead of SIGKILL
     in its Cancel function
   - if the test has a deadline, adds a Context timeout and WaitDelay
     for an arbitrary grace period before the test's deadline expires,
   - fails the test if the command does not complete before the test's deadline, and
   - sets a Cleanup function that verifies that the test did not leak a subprocess.
```
[\(view code\)](<./Testenv.hx#L217>)


## function cpuisSlow


```haxe
function cpuisSlow():Bool
```



CPUIsSlow reports whether the CPU running the test is suspected to be slow.  

[\(view code\)](<./Testenv.hx#L606>)


## function goTool


```haxe
function goTool():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



GoTool reports the path to the Go tool.  

[\(view code\)](<./Testenv.hx#L447>)


## function goToolPath


```haxe
function goToolPath(_t:stdgo.testing.TB):stdgo.GoString
```



GoToolPath reports the path to the Go tool.
It is a convenience wrapper around GoTool.
If the tool is unavailable GoToolPath calls t.Skip.
If the tool should be available and isn't, GoToolPath calls t.Fatal.  

[\(view code\)](<./Testenv.hx#L361>)


## function goroot


```haxe
function goroot(_t:stdgo.testing.TB):stdgo.GoString
```



GOROOT reports the path to the directory containing the root of the Go
project source tree. This is normally equivalent to runtime.GOROOT, but
works even if the test binary was built with \-trimpath and cannot exec
'go env GOROOT'.  


If GOROOT cannot be found, GOROOT skips t if t is non\-nil,
or panics otherwise.  

[\(view code\)](<./Testenv.hx#L433>)


## function hasCGO


```haxe
function hasCGO():Bool
```



HasCGO reports whether the current system can use cgo.  

[\(view code\)](<./Testenv.hx#L497>)


## function hasExternalNetwork


```haxe
function hasExternalNetwork():Bool
```



HasExternalNetwork reports whether the current system can use
external \(non\-localhost\) networks.  

[\(view code\)](<./Testenv.hx#L476>)


## function hasGoBuild


```haxe
function hasGoBuild():Bool
```



HasGoBuild reports whether the current system can build programs with “go build”
and then run them with os.StartProcess or exec.Command.  

[\(view code\)](<./Testenv.hx#L311>)


## function hasGoRun


```haxe
function hasGoRun():Bool
```



HasGoRun reports whether the current system can run programs with “go run.”  

[\(view code\)](<./Testenv.hx#L330>)


## function hasLink


```haxe
function hasLink():Bool
```



HasLink reports whether the current system can use os.Link.  

[\(view code\)](<./Testenv.hx#L576>)


## function hasParallelism


```haxe
function hasParallelism():Bool
```



HasParallelism reports whether the current system can execute multiple
threads in parallel.
There is a copy of this function in cmd/dist/test.go.  

[\(view code\)](<./Testenv.hx#L345>)


## function hasSrc


```haxe
function hasSrc():Bool
```



HasSrc reports whether the entire source tree is available under GOROOT.  

[\(view code\)](<./Testenv.hx#L463>)


## function hasSymlink


```haxe
function hasSymlink():Bool
```



HasSymlink reports whether the current system can use os.Symlink.  

[\(view code\)](<./Testenv.hx#L559>)


## function mustHaveBuildMode


```haxe
function mustHaveBuildMode(_t:stdgo.testing.TB, _buildmode:stdgo.GoString):Void
```



MustHaveBuildMode reports whether the current system can build programs in
the given build mode.
If not, MustHaveBuildMode calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L551>)


## function mustHaveCGO


```haxe
function mustHaveCGO(_t:stdgo.testing.TB):Void
```



MustHaveCGO calls t.Skip if cgo is not available.  

[\(view code\)](<./Testenv.hx#L523>)


## function mustHaveExec


```haxe
function mustHaveExec(_t:stdgo.testing.TB):Void
```



MustHaveExec checks that the current system can start new processes
using os.StartProcess or \(more commonly\) exec.Command.
If not, MustHaveExec calls t.Skip with an explanation.  


On some platforms MustHaveExec checks for exec support by re\-executing the
current executable, which must be a binary built by 'go test'.
We intentionally do not provide a HasExec function because of the risk of
inappropriate recursion in TestMain functions.  


To check for exec support outside of a test, just try to exec the command.
If exec is not supported, testenv.SyscallIsNotSupported will return true
for the resulting error.  

[\(view code\)](<./Testenv.hx#L139>)


## function mustHaveExecPath


```haxe
function mustHaveExecPath(_t:stdgo.testing.TB, _path:stdgo.GoString):Void
```



MustHaveExecPath checks that the current system can start the named executable
using os.StartProcess or \(more commonly\) exec.Command.
If not, MustHaveExecPath calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L170>)


## function mustHaveExternalNetwork


```haxe
function mustHaveExternalNetwork(_t:stdgo.testing.TB):Void
```



MustHaveExternalNetwork checks that the current system can use
external \(non\-localhost\) networks.
If not, MustHaveExternalNetwork calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L484>)


## function mustHaveGoBuild


```haxe
function mustHaveGoBuild(_t:stdgo.testing.TB):Void
```



MustHaveGoBuild checks that the current system can build programs with “go build”
and then run them with os.StartProcess or exec.Command.
If not, MustHaveGoBuild calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L317>)


## function mustHaveGoRun


```haxe
function mustHaveGoRun(_t:stdgo.testing.TB):Void
```



MustHaveGoRun checks that the current system can run programs with “go run.”
If not, MustHaveGoRun calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L335>)


## function mustHaveLink


```haxe
function mustHaveLink(_t:stdgo.testing.TB):Void
```



MustHaveLink reports whether the current system can use os.Link.
If not, MustHaveLink calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L583>)


## function mustHaveParallelism


```haxe
function mustHaveParallelism(_t:stdgo.testing.TB):Void
```



MustHaveParallelism checks that the current system can execute multiple
threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L350>)


## function mustHaveSymlink


```haxe
function mustHaveSymlink(_t:stdgo.testing.TB):Void
```



MustHaveSymlink reports whether the current system can use os.Symlink.
If not, MustHaveSymlink calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L567>)


## function mustInternalLink


```haxe
function mustInternalLink(_t:stdgo.testing.TB, _withCgo:Bool):Void
```



MustInternalLink checks that the current system can link programs with internal
linking.
If not, MustInternalLink calls t.Skip with an explanation.  

[\(view code\)](<./Testenv.hx#L538>)


## function optimizationOff


```haxe
function optimizationOff():Bool
```



OptimizationOff reports whether optimization is disabled.  

[\(view code\)](<./Testenv.hx#L297>)


## function skipFlaky


```haxe
function skipFlaky(_t:stdgo.testing.TB, _issue:stdgo.GoInt):Void
```


[\(view code\)](<./Testenv.hx#L588>)


## function skipFlakyNet


```haxe
function skipFlakyNet(_t:stdgo.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L594>)


## function skipIfOptimizationOff


```haxe
function skipIfOptimizationOff(_t:stdgo.testing.TB):Void
```



SkipIfOptimizationOff skips t if optimization is disabled.  

[\(view code\)](<./Testenv.hx#L630>)


## function skipIfShortAndSlow


```haxe
function skipIfShortAndSlow(_t:stdgo.testing.TB):Void
```



SkipIfShortAndSlow skips t if \-short is set and the CPU running the test is
suspected to be slow.  


\(This is useful for CPU\-intensive tests that otherwise complete quickly.\)  

[\(view code\)](<./Testenv.hx#L621>)


## function syscallIsNotSupported


```haxe
function syscallIsNotSupported(_err:stdgo.Error):Bool
```



SyscallIsNotSupported reports whether err may indicate that a system call is
not supported by the current platform or execution environment.  

[\(view code\)](<./Testenv.hx#L684>)


## function writeImportcfg


```haxe
function writeImportcfg(_t:stdgo.testing.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void
```



WriteImportcfg writes an importcfg file used by the compiler or linker to
dstPath containing entries for the file mappings in packageFiles, as well
as for the packages transitively imported by the package\(s\) in pkgs.  


pkgs may include any package pattern that is valid to pass to 'go list',
so it may also be a list of Go source files all in the same directory.  

[\(view code\)](<./Testenv.hx#L644>)


# Typedefs


```haxe
import stdgo.internal.testenv.*
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function tempDir():stdgo.GoString;
	public function skipped():Bool;
	public function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function skipNow():Void;
	public function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void;
	public function name():stdgo.GoString;
	public function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function log(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function helper():Void;
	public function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function failed():Bool;
	public function failNow():Void;
	public function fail():Void;
	public function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function error(_args:haxe.Rest<stdgo.AnyInterface>):Void;
	public function deadline():{
		_1:Bool;
		_0:stdgo.time.Time;
	};
	public function cleanup(_0:():Void):Void;
};
```


