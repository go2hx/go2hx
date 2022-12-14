package stdgo.internal.cpu;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package cpu implements processor feature detection
	// used by the Go standard library.
**/
private var __go2hxdoc__package:Bool;

/**
	// CacheLineSize is the CPU's assumed cache line size.
	// There is currently no runtime detection of the real cache line size
	// so we use the constant per GOARCH CacheLinePadSize as an approximation.
**/
var cacheLineSize:GoUIntptr = (64 : GoUIntptr);

/**
	// DebugOptions is set to true by the runtime if the OS supports reading
	// GODEBUG early in runtime startup.
	// This should not be changed after it is initialized.
**/
var debugOptions:Bool = false;

/**
	// The booleans in X86 contain the correspondingly named cpuid feature bit.
	// HasAVX and HasAVX2 are only set if the OS does support XMM and YMM registers
	// in addition to the cpuid feature bit being set.
	// The struct is padded to avoid false sharing.
**/
var x86:T__struct_0 = ({
	hasAES: false,
	hasADX: false,
	hasAVX: false,
	hasAVX2: false,
	hasBMI1: false,
	hasBMI2: false,
	hasERMS: false,
	hasFMA: false,
	hasOSXSAVE: false,
	hasPCLMULQDQ: false,
	hasPOPCNT: false,
	hasRDTSCP: false,
	hasSSE3: false,
	hasSSSE3: false,
	hasSSE41: false,
	hasSSE42: false
} : T__struct_0);

/**
	// The booleans in ARM contain the correspondingly named cpu feature bit.
	// The struct is padded to avoid false sharing.
**/
var arm:T__struct_1 = ({hasVFPv4: false, hasIDIVA: false} : T__struct_1);

/**
	// The booleans in ARM64 contain the correspondingly named cpu feature bit.
	// The struct is padded to avoid false sharing.
**/
var arm64:T__struct_2 = ({
	hasAES: false,
	hasPMULL: false,
	hasSHA1: false,
	hasSHA2: false,
	hasCRC32: false,
	hasATOMICS: false,
	hasCPUID: false,
	isNeoverseN1: false,
	isZeus: false
} : T__struct_2);

var mips64x:T__struct_3 = ({hasMSA: false} : T__struct_3);

/**
	// For ppc64(le), it is safe to check only for ISA level starting on ISA v3.00,
	// since there are no optional categories. There are some exceptions that also
	// require kernel support to work (darn, scv), so there are feature bits for
	// those as well. The minimum processor requirement is POWER8 (ISA 2.07).
	// The struct is padded to avoid false sharing.
**/
var ppc64:T__struct_4 = ({
	hasDARN: false,
	hasSCV: false,
	isPOWER8: false,
	isPOWER9: false,
	isPOWER10: false
} : T__struct_4);

var s390x:T__struct_5 = ({
	hasZARCH: false,
	hasSTFLE: false,
	hasLDISP: false,
	hasEIMM: false,
	hasDFP: false,
	hasETF3EH: false,
	hasMSA: false,
	hasAES: false,
	hasAESCBC: false,
	hasAESCTR: false,
	hasAESGCM: false,
	hasGHASH: false,
	hasSHA1: false,
	hasSHA256: false,
	hasSHA512: false,
	hasSHA3: false,
	hasVX: false,
	hasVXE: false,
	hasKDSA: false,
	hasECDSA: false,
	hasEDDSA: false
} : T__struct_5);

/**
	// options contains the cpu debug options that can be used in GODEBUG.
	// Options are arch dependent and are added by the arch specific doinit functions.
	// Features that are mandatory for the specific GOARCH should not be added to options
	// (e.g. SSE2 on amd64).
**/
private var _options:Slice<T_option> = (null : Slice<T_option>);

final cacheLinePadSize:GoUInt64 = ("64" : GoUInt64);

/**
	// CacheLinePad is used to pad structs to avoid false sharing.
**/
@:structInit class CacheLinePad {
	@:optional
	public var _1:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);

	public function new(?_1:GoArray<GoUInt8>) {
		if (_1 != null)
			this._1 = _1;
	}

	public function __copy__() {
		return new CacheLinePad(_1);
	}
}

/**
	// Option names should be lower case. e.g. avx instead of AVX.
**/
@:structInit private class T_option {
	public var name:GoString = "";
	public var feature:Pointer<Bool> = (null : Pointer<Bool>);

	/**
		// whether feature value was specified in GODEBUG
	**/
	public var specified:Bool = false;

	/**
		// whether feature should be enabled
	**/
	public var enable:Bool = false;

	public function new(?name:GoString, ?feature:Pointer<Bool>, ?specified:Bool, ?enable:Bool) {
		if (name != null)
			this.name = name;
		if (feature != null)
			this.feature = feature;
		if (specified != null)
			this.specified = specified;
		if (enable != null)
			this.enable = enable;
	}

	public function __copy__() {
		return new T_option(name, feature, specified, enable);
	}
}

@:structInit @:local private class T__struct_0 {
	@:optional
	public var _7:CacheLinePad = ({} : CacheLinePad);
	public var hasAES:Bool = false;
	public var hasADX:Bool = false;
	public var hasAVX:Bool = false;
	public var hasAVX2:Bool = false;
	public var hasBMI1:Bool = false;
	public var hasBMI2:Bool = false;
	public var hasERMS:Bool = false;
	public var hasFMA:Bool = false;
	public var hasOSXSAVE:Bool = false;
	public var hasPCLMULQDQ:Bool = false;
	public var hasPOPCNT:Bool = false;
	public var hasRDTSCP:Bool = false;
	public var hasSSE3:Bool = false;
	public var hasSSSE3:Bool = false;
	public var hasSSE41:Bool = false;
	public var hasSSE42:Bool = false;
	@:optional
	public var _9:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_7) + " " + Go.string(hasAES) + " " + Go.string(hasADX) + " " + Go.string(hasAVX) + " " + Go.string(hasAVX2) + " "
			+ Go.string(hasBMI1) + " " + Go.string(hasBMI2) + " " + Go.string(hasERMS) + " " + Go.string(hasFMA) + " " + Go.string(hasOSXSAVE) + " "
			+ Go.string(hasPCLMULQDQ) + " " + Go.string(hasPOPCNT) + " " + Go.string(hasRDTSCP) + " " + Go.string(hasSSE3) + " " + Go.string(hasSSSE3) + " "
			+ Go.string(hasSSE41) + " " + Go.string(hasSSE42) + " " + Go.string(_9) + "}";

	public function new(?_7:CacheLinePad, ?hasAES:Bool, ?hasADX:Bool, ?hasAVX:Bool, ?hasAVX2:Bool, ?hasBMI1:Bool, ?hasBMI2:Bool, ?hasERMS:Bool, ?hasFMA:Bool,
			?hasOSXSAVE:Bool, ?hasPCLMULQDQ:Bool, ?hasPOPCNT:Bool, ?hasRDTSCP:Bool, ?hasSSE3:Bool, ?hasSSSE3:Bool, ?hasSSE41:Bool, ?hasSSE42:Bool,
			?_9:CacheLinePad, ?string) {
		if (_7 != null)
			this._7 = _7;
		if (hasAES != null)
			this.hasAES = hasAES;
		if (hasADX != null)
			this.hasADX = hasADX;
		if (hasAVX != null)
			this.hasAVX = hasAVX;
		if (hasAVX2 != null)
			this.hasAVX2 = hasAVX2;
		if (hasBMI1 != null)
			this.hasBMI1 = hasBMI1;
		if (hasBMI2 != null)
			this.hasBMI2 = hasBMI2;
		if (hasERMS != null)
			this.hasERMS = hasERMS;
		if (hasFMA != null)
			this.hasFMA = hasFMA;
		if (hasOSXSAVE != null)
			this.hasOSXSAVE = hasOSXSAVE;
		if (hasPCLMULQDQ != null)
			this.hasPCLMULQDQ = hasPCLMULQDQ;
		if (hasPOPCNT != null)
			this.hasPOPCNT = hasPOPCNT;
		if (hasRDTSCP != null)
			this.hasRDTSCP = hasRDTSCP;
		if (hasSSE3 != null)
			this.hasSSE3 = hasSSE3;
		if (hasSSSE3 != null)
			this.hasSSSE3 = hasSSSE3;
		if (hasSSE41 != null)
			this.hasSSE41 = hasSSE41;
		if (hasSSE42 != null)
			this.hasSSE42 = hasSSE42;
		if (_9 != null)
			this._9 = _9;
	}

	public function __copy__() {
		return new T__struct_0(_7, hasAES, hasADX, hasAVX, hasAVX2, hasBMI1, hasBMI2, hasERMS, hasFMA, hasOSXSAVE, hasPCLMULQDQ, hasPOPCNT, hasRDTSCP,
			hasSSE3, hasSSSE3, hasSSE41, hasSSE42, _9);
	}
}

@:structInit @:local private class T__struct_1 {
	@:optional
	public var _15:CacheLinePad = ({} : CacheLinePad);
	public var hasVFPv4:Bool = false;
	public var hasIDIVA:Bool = false;
	@:optional
	public var _17:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_15) + " " + Go.string(hasVFPv4) + " " + Go.string(hasIDIVA) + " " + Go.string(_17) + "}";

	public function new(?_15:CacheLinePad, ?hasVFPv4:Bool, ?hasIDIVA:Bool, ?_17:CacheLinePad, ?string) {
		if (_15 != null)
			this._15 = _15;
		if (hasVFPv4 != null)
			this.hasVFPv4 = hasVFPv4;
		if (hasIDIVA != null)
			this.hasIDIVA = hasIDIVA;
		if (_17 != null)
			this._17 = _17;
	}

	public function __copy__() {
		return new T__struct_1(_15, hasVFPv4, hasIDIVA, _17);
	}
}

@:structInit @:local private class T__struct_2 {
	@:optional
	public var _23:CacheLinePad = ({} : CacheLinePad);
	public var hasAES:Bool = false;
	public var hasPMULL:Bool = false;
	public var hasSHA1:Bool = false;
	public var hasSHA2:Bool = false;
	public var hasCRC32:Bool = false;
	public var hasATOMICS:Bool = false;
	public var hasCPUID:Bool = false;
	public var isNeoverseN1:Bool = false;
	public var isZeus:Bool = false;
	@:optional
	public var _25:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_23) + " " + Go.string(hasAES) + " " + Go.string(hasPMULL) + " " + Go.string(hasSHA1) + " " + Go.string(hasSHA2) + " "
			+ Go.string(hasCRC32) + " " + Go.string(hasATOMICS) + " " + Go.string(hasCPUID) + " " + Go.string(isNeoverseN1) + " " + Go.string(isZeus) + " "
			+ Go.string(_25) + "}";

	public function new(?_23:CacheLinePad, ?hasAES:Bool, ?hasPMULL:Bool, ?hasSHA1:Bool, ?hasSHA2:Bool, ?hasCRC32:Bool, ?hasATOMICS:Bool, ?hasCPUID:Bool,
			?isNeoverseN1:Bool, ?isZeus:Bool, ?_25:CacheLinePad, ?string) {
		if (_23 != null)
			this._23 = _23;
		if (hasAES != null)
			this.hasAES = hasAES;
		if (hasPMULL != null)
			this.hasPMULL = hasPMULL;
		if (hasSHA1 != null)
			this.hasSHA1 = hasSHA1;
		if (hasSHA2 != null)
			this.hasSHA2 = hasSHA2;
		if (hasCRC32 != null)
			this.hasCRC32 = hasCRC32;
		if (hasATOMICS != null)
			this.hasATOMICS = hasATOMICS;
		if (hasCPUID != null)
			this.hasCPUID = hasCPUID;
		if (isNeoverseN1 != null)
			this.isNeoverseN1 = isNeoverseN1;
		if (isZeus != null)
			this.isZeus = isZeus;
		if (_25 != null)
			this._25 = _25;
	}

	public function __copy__() {
		return new T__struct_2(_23, hasAES, hasPMULL, hasSHA1, hasSHA2, hasCRC32, hasATOMICS, hasCPUID, isNeoverseN1, isZeus, _25);
	}
}

@:structInit @:local private class T__struct_3 {
	@:optional
	public var _31:CacheLinePad = ({} : CacheLinePad);

	/**
		// MIPS SIMD architecture
	**/
	public var hasMSA:Bool = false;

	@:optional
	public var _33:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_31) + " " + Go.string(hasMSA) + " " + Go.string(_33) + "}";

	public function new(?_31:CacheLinePad, ?hasMSA:Bool, ?_33:CacheLinePad, ?string) {
		if (_31 != null)
			this._31 = _31;
		if (hasMSA != null)
			this.hasMSA = hasMSA;
		if (_33 != null)
			this._33 = _33;
	}

	public function __copy__() {
		return new T__struct_3(_31, hasMSA, _33);
	}
}

@:structInit @:local private class T__struct_4 {
	@:optional
	public var _39:CacheLinePad = ({} : CacheLinePad);

	/**
		// Hardware random number generator (requires kernel enablement)
	**/
	public var hasDARN:Bool = false;

	/**
		// Syscall vectored (requires kernel enablement)
	**/
	public var hasSCV:Bool = false;

	/**
		// ISA v2.07 (POWER8)
	**/
	public var isPOWER8:Bool = false;

	/**
		// ISA v3.00 (POWER9)
	**/
	public var isPOWER9:Bool = false;

	/**
		// ISA v3.1  (POWER10)
	**/
	public var isPOWER10:Bool = false;

	@:optional
	public var _41:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_39) + " " + Go.string(hasDARN) + " " + Go.string(hasSCV) + " " + Go.string(isPOWER8) + " " + Go.string(isPOWER9) + " "
			+ Go.string(isPOWER10) + " " + Go.string(_41) + "}";

	public function new(?_39:CacheLinePad, ?hasDARN:Bool, ?hasSCV:Bool, ?isPOWER8:Bool, ?isPOWER9:Bool, ?isPOWER10:Bool, ?_41:CacheLinePad, ?string) {
		if (_39 != null)
			this._39 = _39;
		if (hasDARN != null)
			this.hasDARN = hasDARN;
		if (hasSCV != null)
			this.hasSCV = hasSCV;
		if (isPOWER8 != null)
			this.isPOWER8 = isPOWER8;
		if (isPOWER9 != null)
			this.isPOWER9 = isPOWER9;
		if (isPOWER10 != null)
			this.isPOWER10 = isPOWER10;
		if (_41 != null)
			this._41 = _41;
	}

	public function __copy__() {
		return new T__struct_4(_39, hasDARN, hasSCV, isPOWER8, isPOWER9, isPOWER10, _41);
	}
}

@:structInit @:local private class T__struct_5 {
	@:optional
	public var _47:CacheLinePad = ({} : CacheLinePad);

	/**
		// z architecture mode is active [mandatory]
	**/
	public var hasZARCH:Bool = false;

	/**
		// store facility list extended [mandatory]
	**/
	public var hasSTFLE:Bool = false;

	/**
		// long (20-bit) displacements [mandatory]
	**/
	public var hasLDISP:Bool = false;

	/**
		// 32-bit immediates [mandatory]
	**/
	public var hasEIMM:Bool = false;

	/**
		// decimal floating point
	**/
	public var hasDFP:Bool = false;

	/**
		// ETF-3 enhanced
	**/
	public var hasETF3EH:Bool = false;

	/**
		// message security assist (CPACF)
	**/
	public var hasMSA:Bool = false;

	/**
		// KM-AES{128,192,256} functions
	**/
	public var hasAES:Bool = false;

	/**
		// KMC-AES{128,192,256} functions
	**/
	public var hasAESCBC:Bool = false;

	/**
		// KMCTR-AES{128,192,256} functions
	**/
	public var hasAESCTR:Bool = false;

	/**
		// KMA-GCM-AES{128,192,256} functions
	**/
	public var hasAESGCM:Bool = false;

	/**
		// KIMD-GHASH function
	**/
	public var hasGHASH:Bool = false;

	/**
		// K{I,L}MD-SHA-1 functions
	**/
	public var hasSHA1:Bool = false;

	/**
		// K{I,L}MD-SHA-256 functions
	**/
	public var hasSHA256:Bool = false;

	/**
		// K{I,L}MD-SHA-512 functions
	**/
	public var hasSHA512:Bool = false;

	/**
		// K{I,L}MD-SHA3-{224,256,384,512} and K{I,L}MD-SHAKE-{128,256} functions
	**/
	public var hasSHA3:Bool = false;

	/**
		// vector facility. Note: the runtime sets this when it processes auxv records.
	**/
	public var hasVX:Bool = false;

	/**
		// vector-enhancements facility 1
	**/
	public var hasVXE:Bool = false;

	/**
		// elliptic curve functions
	**/
	public var hasKDSA:Bool = false;

	/**
		// NIST curves
	**/
	public var hasECDSA:Bool = false;

	/**
		// Edwards curves
	**/
	public var hasEDDSA:Bool = false;

	@:optional
	public var _49:CacheLinePad = ({} : CacheLinePad);

	public function string():String
		return "{" + Go.string(_47) + " " + Go.string(hasZARCH) + " " + Go.string(hasSTFLE) + " " + Go.string(hasLDISP) + " " + Go.string(hasEIMM) + " "
			+ Go.string(hasDFP) + " " + Go.string(hasETF3EH) + " " + Go.string(hasMSA) + " " + Go.string(hasAES) + " " + Go.string(hasAESCBC) + " "
			+ Go.string(hasAESCTR) + " " + Go.string(hasAESGCM) + " " + Go.string(hasGHASH) + " " + Go.string(hasSHA1) + " " + Go.string(hasSHA256) + " "
			+ Go.string(hasSHA512) + " " + Go.string(hasSHA3) + " " + Go.string(hasVX) + " " + Go.string(hasVXE) + " " + Go.string(hasKDSA) + " "
			+ Go.string(hasECDSA) + " " + Go.string(hasEDDSA) + " " + Go.string(_49) + "}";

	public function new(?_47:CacheLinePad, ?hasZARCH:Bool, ?hasSTFLE:Bool, ?hasLDISP:Bool, ?hasEIMM:Bool, ?hasDFP:Bool, ?hasETF3EH:Bool, ?hasMSA:Bool,
			?hasAES:Bool, ?hasAESCBC:Bool, ?hasAESCTR:Bool, ?hasAESGCM:Bool, ?hasGHASH:Bool, ?hasSHA1:Bool, ?hasSHA256:Bool, ?hasSHA512:Bool, ?hasSHA3:Bool,
			?hasVX:Bool, ?hasVXE:Bool, ?hasKDSA:Bool, ?hasECDSA:Bool, ?hasEDDSA:Bool, ?_49:CacheLinePad, ?string) {
		if (_47 != null)
			this._47 = _47;
		if (hasZARCH != null)
			this.hasZARCH = hasZARCH;
		if (hasSTFLE != null)
			this.hasSTFLE = hasSTFLE;
		if (hasLDISP != null)
			this.hasLDISP = hasLDISP;
		if (hasEIMM != null)
			this.hasEIMM = hasEIMM;
		if (hasDFP != null)
			this.hasDFP = hasDFP;
		if (hasETF3EH != null)
			this.hasETF3EH = hasETF3EH;
		if (hasMSA != null)
			this.hasMSA = hasMSA;
		if (hasAES != null)
			this.hasAES = hasAES;
		if (hasAESCBC != null)
			this.hasAESCBC = hasAESCBC;
		if (hasAESCTR != null)
			this.hasAESCTR = hasAESCTR;
		if (hasAESGCM != null)
			this.hasAESGCM = hasAESGCM;
		if (hasGHASH != null)
			this.hasGHASH = hasGHASH;
		if (hasSHA1 != null)
			this.hasSHA1 = hasSHA1;
		if (hasSHA256 != null)
			this.hasSHA256 = hasSHA256;
		if (hasSHA512 != null)
			this.hasSHA512 = hasSHA512;
		if (hasSHA3 != null)
			this.hasSHA3 = hasSHA3;
		if (hasVX != null)
			this.hasVX = hasVX;
		if (hasVXE != null)
			this.hasVXE = hasVXE;
		if (hasKDSA != null)
			this.hasKDSA = hasKDSA;
		if (hasECDSA != null)
			this.hasECDSA = hasECDSA;
		if (hasEDDSA != null)
			this.hasEDDSA = hasEDDSA;
		if (_49 != null)
			this._49 = _49;
	}

	public function __copy__() {
		return new T__struct_5(_47, hasZARCH, hasSTFLE, hasLDISP, hasEIMM, hasDFP, hasETF3EH, hasMSA, hasAES, hasAESCBC, hasAESCTR, hasAESGCM, hasGHASH,
			hasSHA1, hasSHA256, hasSHA512, hasSHA3, hasVX, hasVXE, hasKDSA, hasECDSA, hasEDDSA, _49);
	}
}

/**
	// Initialize examines the processor and sets the relevant variables above.
	// This is called by the runtime package early in program initialization,
	// before normal init functions are run. env is set by runtime if the OS supports
	// cpu feature options in GODEBUG.
**/
function initialize(_env:GoString):Void {
	_doinit();
	_processOptions(_env);
}

/**
	// processOptions enables or disables CPU feature values based on the parsed env string.
	// The env string is expected to be of the form cpu.feature1=value1,cpu.feature2=value2...
	// where feature names is one of the architecture specific list stored in the
	// cpu packages options variable and values are either 'on' or 'off'.
	// If env contains cpu.all=off then all cpu features referenced through the options
	// variable are disabled. Other feature names and values result in warning messages.
**/
function _processOptions(_env:GoString):Void {
	stdgo.internal.Macro.controlFlow({
		@:label("field") while (_env != (Go.str())) {
			var _field:GoString = Go.str();
			var _i:GoInt = _indexByte(_env, (44 : GoUInt8));
			if (_i < (0:GoInt)) {
				{
					final __tmp__0 = _env;
					final __tmp__1 = Go.str();
					_field = __tmp__0;
					_env = __tmp__1;
				};
			} else {
				{
					final __tmp__0 = (_env.__slice__(0, _i) : GoString);
					final __tmp__1 = (_env.__slice__(_i + (1 : GoInt)) : GoString);
					_field = __tmp__0;
					_env = __tmp__1;
				};
			};
			if ((_field.length < (4:GoInt)) || ((_field.__slice__(0, (4 : GoInt)) : GoString) != Go.str("cpu."))) {
				continue;
			};
			_i = _indexByte(_field, (61 : GoUInt8));
			if (_i < (0:GoInt)) {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: no value specified for \""), _field, Go.str("\"\n"));
				continue;
			};
			var _0:GoString = (_field.__slice__((4 : GoInt), _i) : GoString),
				_1:GoString = (_field.__slice__(_i + (1 : GoInt)) : GoString),
				_value:GoString = _1,
				_key:GoString = _0;
			var _enable:Bool = false;
			if (_value == (Go.str("on"))) {
				_enable = true;
			} else if (_value == (Go.str("off"))) {
				_enable = false;
			} else {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: value \""), _value, Go.str("\" not supported for cpu option \""), _key, Go.str("\"\n"));
				continue;
			};
			if (_key == (Go.str("all"))) {
				for (_i in 0..._options.length.toBasic()) {
					_options[_i].specified = true;
					_options[_i].enable = _enable;
				};
				continue;
			};
			for (_i in 0..._options.length.toBasic()) {
				if (_options[_i].name == (_key)) {
					_options[_i].specified = true;
					_options[_i].enable = _enable;
					continue;
				};
			};
			stdgo.fmt.Fmt.print(Go.str("GODEBUG: unknown cpu feature \""), _key, Go.str("\"\n"));
		};
		for (_0 => _o in _options) {
			if (!_o.specified) {
				continue;
			};
			if (_o.enable && !_o.feature.value) {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: can not enable \""), _o.name, Go.str("\", missing CPU support\n"));
				continue;
			};
			_o.feature.value = _o.enable;
		};
	});
}

/**
	// indexByte returns the index of the first instance of c in s,
	// or -1 if c is not present in s.
**/
function _indexByte(_s:GoString, _c:GoByte):GoInt {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			if (_s[_i] == (_c)) {
				return _i;
			};
		});
	};
	return (-1 : GoInt);
}

/**
	// Name returns the CPU name given by the vendor
	// if it can be read directly from memory or by CPU instructions.
	// If the CPU name can not be determined an empty string is returned.
	//
	// Implementations that use the Operating System (e.g. sysctl or /sys/)
	// to gather CPU information for display should be placed in internal/sysinfo.
**/
function name():GoString {
	return Go.str();
}

function _doinit():Void {}
