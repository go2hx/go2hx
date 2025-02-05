package stdgo;
/**
 * All interfaces and structs unify with this type
 */
typedef StructType = {
	/**
	 * Allows struct or interfaces to provide back type information.
	 * @return stdgo.AnyInterface
	 */
	public function __underlying__():stdgo.AnyInterface;
}