package analysis

import "go/types"

// utility function to replace a type of sub with by, inside of t, return back t
func replaceType(t types.Type, sub types.Type, by types.Type) types.Type {
	//fmt.Println("type:", t)
	//fmt.Println("sub:", sub)
	//fmt.Println("by:", by)
	switch t := t.(type) {
	case *types.Struct:
		fields := make([]*types.Var, t.NumFields())
		tags := make([]string, t.NumFields())
		for i := 0; i < t.NumFields(); i++ {
			tags[i] = t.Tag(i)
			v := types.NewVar(t.Field(i).Pos(), t.Field(i).Pkg(), t.Field(i).Name(), replaceType(t.Field(i).Type(), sub, by))
			fields[i] = v
		}
		return types.NewStruct(fields, tags)
	case *types.Slice:
		return types.NewSlice(replaceType(t.Elem(), sub, by))
	case *types.Array:
		return types.NewArray(replaceType(t.Elem(), sub, by), t.Len())
	default:
		if t == sub {
			return by
		}
	}
	return t
}
