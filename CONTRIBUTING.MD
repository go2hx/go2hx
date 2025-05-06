## Contributing to go2hx

Make sure the changes are inline with the projects direction, make an issue first to discuss, if you're unsure.

After forking and setting up from source the best way to contribute is to find some library your interested in using and if there is an issue, track down the location, isolate it and then make the necessary changes to the compiler to have that piece of code work. (Finding issues or isolation are also useful endeavors if it's a previously unknown issue)

Make a test by adding the isolated Go code in the ``tests/unit`` folder then create a pull request and watch the tests be run against your changes, if they pass and it's within the scope of the project, it'll get reviewed and then merged.

To have a smooth experience there are a few good things to know.
1. running ``haxe testbed/build.hxml`` is the fastest way to test the compiler while working on it.
2. If you are not using testbed, make sure to add the ``--rebuild`` flag to recompile the go2hx compiler.
3. The [website](https://go2hx.github.io/) logs out information on many of Go's stdlibs, use it if possible.
4. If you are making changes that occur in Go's stdlibs, make sure to recompile with ``haxe --run Make std name_of_std`` and also if you need to write handwritten changes for example in stdlib ``os``, you can find the changes in ``std/go/os/Os.hx``
5. If you are very confused about a part of the Go language, there is a [spec](https://go.dev/ref/spec).

## Finding bugs and other issues

Here are some of the ways you can find an issue in go2hx:

* By checking the issue tracker.
* Manually, by using go2hx for a library you want.
* By finding failing stdlibs on the [website](https://go2hx.github.io/).
* By using a profiling tool such as tracy to find code that can be sped up.

## Communication

Join the [Haxe discord](https://discord.gg/jgPcqC7DY2) and find the #go2hx channel.

## Testing policy

If possible, please add unit tests when fixing bugs.

Not all tests work, but any tests that pass are tracked and are required to work in the future.




