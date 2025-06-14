package main

func main() {
	x := new(nistCurve[nistPointStruct])
	_ = x
	//x.newPoint().Bytes()
}

type nistCurve[Point nistPoint[Point]] struct {
	newPoint func() Point
}

type nistPointStruct struct {
}

func (nistPointStruct) Bytes() []byte {
	return nil
}

// nistPoint is a generic constraint for the nistec Point types.
type nistPoint[T any] interface {
	Bytes() []byte
}

func (curve *nistCurve[Point]) pointToAffine(p Point) {
	out := p.Bytes()
	_ = out
}
