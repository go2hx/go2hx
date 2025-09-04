/**
 * Run the compiler based on the system arguments
 */
@:buildXml('
<linker id="exe">
  <flag value="-Wl,-stack_size" if="macos" />
  <flag value="-Wl,0x1000000" if="macos" />
  <flag value="/STACK:4987152,2987152" if="windows" />
</linker>
')
class Main {
	static function main() {
		Compiler.runCompilerFromArgs(Sys.args());
	}
}
