package main

func main() {
	x := &nistCurve[*P224Point]{
		newPoint: func() *P224Point { return NewP224Point() },
	}
	x.newPoint().Bytes()
}

func NewP224Point() *P224Point {
	return &P224Point{}
}

func (p *P224Point) Bytes() []byte {
	return []byte{}
}

type P224Point struct{}

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
	_ = p.Bytes()
}
