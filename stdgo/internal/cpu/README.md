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
    	gotoNext = 6369
    	_ = gotoNext == 6369
    	_ = 0
    	fieldBreak = false
    	gotoNext = 6377
    	_ = gotoNext == 6377
    	if !fieldBreak && (env != "") {
    		gotoNext = 6391
    		_ = gotoNext == 6391
    		field_6395 = ""
    		i_6409 = indexByte(env, 44)
    		if i_6409 < 0 {
    			gotoNext = 6445
    			_ = gotoNext == 6445
    			field_6395, env = env, ""
    			gotoNext = 6523
    		} else {
    			gotoNext = 6480
    			_ = gotoNext == 6480
    			field_6395, env = env[:i_6409], env[i_6409+1:]
    			gotoNext = 6523
}
    		_ = gotoNext == 6523
    		if len(field_6395) < 4 || field_6395[:4] != "cpu." {
    			gotoNext = 6564
    			_ = gotoNext == 6564
    			_ = 0
    			gotoNext = 6377
    			gotoNext = 6584
    		} else {
    			gotoNext = 6584
}
    		_ = gotoNext == 6584
    		i_6409 = indexByte(field_6395, 61)
    		if i_6409 < 0 {
    			gotoNext = 6621
    			_ = gotoNext == 6621
    			print("GODEBUG: no value specified for \"", field_6395, "\"\n")
    			_ = 0
    			gotoNext = 6377
    			gotoNext = 6703
    		} else {
    			gotoNext = 6703
}
    		_ = gotoNext == 6703
    		key_6703, value_6708 = field_6395[4:i_6409], field_6395[i_6409+1:]
    		_ = 0
    		gotoNext = 6783
    		_ = gotoNext == 6783
    		switch value_6708 {
    		case "on":
    			gotoNext = 6800
    			_ = gotoNext == 6800
    			enable_6769 = true
    			gotoNext = 6984
    		case "off":
    			gotoNext = 6830
    			_ = gotoNext == 6830
    			enable_6769 = false
    			gotoNext = 6984
    		default:
    			gotoNext = 6862
    			_ = gotoNext == 6862
    			print("GODEBUG: value \"", value_6708, "\" not supported for cpu option \"", key_6703, "\"\n")
    			gotoNext = 6377
    			gotoNext = 6984
}
    		_ = gotoNext == 6984
    		if key_6703 == "all" {
    			gotoNext = 7000
    			_ = gotoNext == 7000
    			if 0 < len(options) {
    				gotoNext = 7095
    				_ = gotoNext == 7095
    				i_7009 = 0
    				gotoNext = 7096
    				_ = gotoNext == 7096
    				if i_7009 < len(options) {
    					gotoNext = 7028
    					_ = gotoNext == 7028
    					options[i_7009].Specified = true
    					options[i_7009].Enable = enable_6769
    					i_7009++
    					gotoNext = 7096
    				} else {
    					gotoNext = 7101
}
    				gotoNext = 7101
    			} else {
    				gotoNext = 7101
}
    			_ = gotoNext == 7101
    			gotoNext = 6377
    			gotoNext = 7123
    		} else {
    			gotoNext = 7123
}
    		_ = gotoNext == 7123
    		if 0 < len(options) {
    			gotoNext = 7267
    			_ = gotoNext == 7267
    			i_7127 = 0
    			gotoNext = 7268
    			_ = gotoNext == 7268
    			if i_7127 < len(options) {
    				gotoNext = 7146
    				_ = gotoNext == 7146
    				if options[i_7127].Name == key_6703 {
    					gotoNext = 7177
    					_ = gotoNext == 7177
    					options[i_7127].Specified = true
    					options[i_7127].Enable = enable_6769
    					gotoNext = 6377
    					gotoNext = 7127
    				} else {
    					gotoNext = 7127
}
    				_ = gotoNext == 7127
    				i_7127++
    				gotoNext = 7268
    			} else {
    				gotoNext = 7273
}
    			gotoNext = 7273
    		} else {
    			gotoNext = 7273
}
    		_ = gotoNext == 7273
    		print("GODEBUG: unknown cpu feature \"", key_6703, "\"\n")
    		gotoNext = 6377
    	} else {
    		gotoNext = 7332
}
    	_ = gotoNext == 7332
    	if 0 < len(options) {
    		gotoNext = 7545
    		_ = gotoNext == 7545
    		i_7344_0, o_7339 = 0, options[0]
    		gotoNext = 7546
    		_ = gotoNext == 7546
    		if i_7344_0 < len(options) {
    			gotoNext = 7358
    			_ = gotoNext == 7358
    			o_7339 = options[i_7344_0]
    			if !o_7339.Specified {
    				gotoNext = 7378
    				_ = gotoNext == 7378
    				i_7344_0++
    				gotoNext = 7546
    				gotoNext = 7399
    			} else {
    				gotoNext = 7399
}
    			_ = gotoNext == 7399
    			if o_7339.Enable && !*o_7339.Feature {
    				gotoNext = 7426
    				_ = gotoNext == 7426
    				print("GODEBUG: can not enable \"", o_7339.Name, "\", missing CPU support\n")
    				i_7344_0++
    				gotoNext = 7546
    				gotoNext = 7523
    			} else {
    				gotoNext = 7523
}
    			_ = gotoNext == 7523
    			*o_7339.Feature = o_7339.Enable
    			i_7344_0++
    			gotoNext = 7546
    		} else {
    			gotoNext = 7548
}
    		gotoNext = 7548
    	} else {
    		gotoNext = 7548
}
    	_ = gotoNext == 7548
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


