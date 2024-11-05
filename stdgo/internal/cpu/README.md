# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Cpu](<#class-cpu>)

  - [`function initialize(_env:String):Void`](<#cpu-function-initialize>)

  - [`function name():String`](<#cpu-function-name>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [abstract CacheLinePad](<#abstract-cachelinepad>)

- [abstract T\_option](<#abstract-t_option>)

# Constants


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cacheLinePadSize.cacheLinePadSize
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var arm:stdgo._internal.internal.cpu.T__struct_1
```


```haxe
var arm64:stdgo._internal.internal.cpu.T__struct_2
```


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


```haxe
var debugOptions:Bool
```


```haxe
var mips64x:stdgo._internal.internal.cpu.T__struct_3
```


```haxe
var options:Array<stdgo.internal.cpu.T_option>
```


```haxe
var ppc64:stdgo._internal.internal.cpu.T__struct_4
```


```haxe
var s390x:stdgo._internal.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo._internal.internal.cpu.T__struct_0
```


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class Cpu


```
{
    	gotoNext = 272838
    	_ = gotoNext == 272838
    	_ = 0
    	fieldBreak = false
    	gotoNext = 272846
    	_ = gotoNext == 272846
    	if !fieldBreak && (env != "") {
    		gotoNext = 272860
    		_ = gotoNext == 272860
    		field_272864 = ""
    		i_272878 = indexByte(env, 44)
    		if i_272878 < 0 {
    			gotoNext = 272914
    			_ = gotoNext == 272914
    			field_272864, env = env, ""
    			gotoNext = 272992
    		} else {
    			gotoNext = 272949
    			_ = gotoNext == 272949
    			field_272864, env = env[:i_272878], env[i_272878+1:]
    			gotoNext = 272992
}
    		_ = gotoNext == 272992
    		if len(field_272864) < 4 || field_272864[:4] != "cpu." {
    			gotoNext = 273033
    			_ = gotoNext == 273033
    			_ = 0
    			gotoNext = 272846
    			gotoNext = 273053
    		} else {
    			gotoNext = 273053
}
    		_ = gotoNext == 273053
    		i_272878 = indexByte(field_272864, 61)
    		if i_272878 < 0 {
    			gotoNext = 273090
    			_ = gotoNext == 273090
    			print("GODEBUG: no value specified for \"", field_272864, "\"\n")
    			_ = 0
    			gotoNext = 272846
    			gotoNext = 273172
    		} else {
    			gotoNext = 273172
}
    		_ = gotoNext == 273172
    		key_273172, value_273177 = field_272864[4:i_272878], field_272864[i_272878+1:]
    		_ = 0
    		gotoNext = 273252
    		_ = gotoNext == 273252
    		switch value_273177 {
    		case "on":
    			gotoNext = 273269
    			_ = gotoNext == 273269
    			enable_273238 = true
    			gotoNext = 273453
    		case "off":
    			gotoNext = 273299
    			_ = gotoNext == 273299
    			enable_273238 = false
    			gotoNext = 273453
    		default:
    			gotoNext = 273331
    			_ = gotoNext == 273331
    			print("GODEBUG: value \"", value_273177, "\" not supported for cpu option \"", key_273172, "\"\n")
    			gotoNext = 272846
    			gotoNext = 273453
}
    		_ = gotoNext == 273453
    		if key_273172 == "all" {
    			gotoNext = 273469
    			_ = gotoNext == 273469
    			if 0 < len(options) {
    				gotoNext = 273564
    				_ = gotoNext == 273564
    				i_273478 = 0
    				gotoNext = 273565
    				_ = gotoNext == 273565
    				if i_273478 < len(options) {
    					gotoNext = 273497
    					_ = gotoNext == 273497
    					options[i_273478].Specified = true
    					options[i_273478].Enable = enable_273238
    					i_273478++
    					gotoNext = 273565
    				} else {
    					gotoNext = 273570
}
    				gotoNext = 273570
    			} else {
    				gotoNext = 273570
}
    			_ = gotoNext == 273570
    			gotoNext = 272846
    			gotoNext = 273592
    		} else {
    			gotoNext = 273592
}
    		_ = gotoNext == 273592
    		if 0 < len(options) {
    			gotoNext = 273736
    			_ = gotoNext == 273736
    			i_273596 = 0
    			gotoNext = 273737
    			_ = gotoNext == 273737
    			if i_273596 < len(options) {
    				gotoNext = 273615
    				_ = gotoNext == 273615
    				if options[i_273596].Name == key_273172 {
    					gotoNext = 273646
    					_ = gotoNext == 273646
    					options[i_273596].Specified = true
    					options[i_273596].Enable = enable_273238
    					gotoNext = 272846
    					gotoNext = 273596
    				} else {
    					gotoNext = 273596
}
    				_ = gotoNext == 273596
    				i_273596++
    				gotoNext = 273737
    			} else {
    				gotoNext = 273742
}
    			gotoNext = 273742
    		} else {
    			gotoNext = 273742
}
    		_ = gotoNext == 273742
    		print("GODEBUG: unknown cpu feature \"", key_273172, "\"\n")
    		gotoNext = 272846
    	} else {
    		gotoNext = 273801
}
    	_ = gotoNext == 273801
    	if 0 < len(options) {
    		gotoNext = 274014
    		_ = gotoNext == 274014
    		i_273813_0, o_273808 = 0, options[0]
    		gotoNext = 274015
    		_ = gotoNext == 274015
    		if i_273813_0 < len(options) {
    			gotoNext = 273827
    			_ = gotoNext == 273827
    			o_273808 = options[i_273813_0]
    			if !o_273808.Specified {
    				gotoNext = 273847
    				_ = gotoNext == 273847
    				i_273813_0++
    				gotoNext = 274015
    				gotoNext = 273868
    			} else {
    				gotoNext = 273868
}
    			_ = gotoNext == 273868
    			if o_273808.Enable && !*o_273808.Feature {
    				gotoNext = 273895
    				_ = gotoNext == 273895
    				print("GODEBUG: can not enable \"", o_273808.Name, "\", missing CPU support\n")
    				i_273813_0++
    				gotoNext = 274015
    				gotoNext = 273992
    			} else {
    				gotoNext = 273992
}
    			_ = gotoNext == 273992
    			*o_273808.Feature = o_273808.Enable
    			i_273813_0++
    			gotoNext = 274015
    		} else {
    			gotoNext = 274017
}
    		gotoNext = 274017
    	} else {
    		gotoNext = 274017
}
    	_ = gotoNext == 274017
    	gotoNext = -1
    }
```
### Cpu function initialize


```haxe
function initialize(_env:String):Void
```


```
Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
```
[\(view code\)](<./Cpu.hx#L309>)


### Cpu function name


```haxe
function name():String
```


```
Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
```

Implementations that use the Operating System \(e.g. sysctl or /sys/\)
to gather CPU information for display should be placed in internal/sysinfo.  

[\(view code\)](<./Cpu.hx#L320>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.cpu.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.internal.cpu.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.internal.cpu.T__struct_2;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.internal.cpu.T__struct_3;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.internal.cpu.T__struct_4;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.internal.cpu.T__struct_5;
```


# Abstracts


## abstract CacheLinePad


[\(view file containing code\)](<./Cpu.hx>)


## abstract T\_option


[\(view file containing code\)](<./Cpu.hx>)


