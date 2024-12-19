# hx-lua-simdjson (WIP)

A basic haxe-specific lua binding to [simdjson](https://simdjson.org). This
library is intended to be used only via the Haxe compiler.

## Requirements
 * hx-lua-simdjson only works on 64bit systems.
 * a lua build environment with support for C++11
   * g++ version 7+ and clang++ version 6+ or newer should work!


## Licenses
 * The jsonexamples, src/simdjson.cpp, src/simdjson.h are unmodified from the released version simdjson under the Apache License 2.0.
 * All other files/folders are apart of hx-lua-simdjson also under the Apache License 2.0.

## Acknowledgments
 * This library based heavily off of an early version of [lua-simdjson](https://github.com/FourierTransformer/lua-simdjson) by [FourierTransformer](https://github.com/FourierTransformer).
 * Special thanks to the main author of simdjson, [Daniel Lemire](https://github.com/lemire), as well as the supporting authors [John Keiser](https://github.com/jkeiser), and [Geoff Langdale](https://github.com/geofflangdale).
