
sig Building {}
sig Person {house: one Building}
sig Man extends Person {wife: lone Woman}
sig Woman extends Person {husband: lone Man}

pred notMarried[p: Person] {p in Man => (no q: Woman | p.wife = q) else (no q: Man | p.husband = q)}

pred noOneLives[b: Building] {no p: Person | p.house = b}

pred marriedDifferentHouses [p: Man, q: Woman] { (p.wife = q && q.husband = p) => (p.house != q.house) }


/////////////////////////////


pred married[p: Person] {p in Man => (some q: Woman | p.wife = q && q.husband = p) else (some q: Man | p.husband = q && q.wife = p)}

fact partnerPartnerMan {all m: Man | married[m] => (m.wife.husband = m)}
fact partnerPartnerWoman {all w: Woman | married[w] => (w.husband.wife = w)}

sig Cinema in Building {screens: some Screen}
sig Time {}
sig Director in Person {}
sig Actor in Man {}
sig Actress in Woman {}
sig Movie 
{
	director: one Director,
    cast: set (Actor + Actress),
    sequel: set Movie
}
sig Screen {shows: set (Time -> Movie)} 
fact {all s: Screen | one c: Cinema | s in c.screens}

fact {all c: Cinema | one t: Time | no s1,s2: Screen | s1 in c.screens && s2 in c.screens && s1 != s2 && s1.shows[t] = s2.shows[t] }

fact {all m: Movie | m.cast != none}

fact {all p: Person | no c: Cinema | p.house = c}

fact {all m: Man | married[m] => (no w: Woman | m.wife = w && m.house = w.house)} //added after delivery
fact {all w: Woman | married[w] => (no m: Man | w.husband = m && w.house = m.house)} //added after delivery

fact {all m: Movie | m not in m.^sequel}

fact {no m1, m2, m3: Movie | m3 in m1.sequel && m3 in m2.sequel} // added after delivery

fact {all m: Movie | lone m.sequel}

//////////////////////////////

fun moviesOf[p: Actor]: set Movie {cast.p}
fun moviesOf[q: Actress]: set Movie {cast.q}

fun diectorsNotActing[]: set Director {Director - (Actor + Actress)}

///////////////////////////////

assert noCouplesInSameMovie{ no p: Man, q: Woman, m: Movie | p.wife = q && q.husband = p && p in m.cast and q in m.cast }

assert coupleMenTogether {no m1, m2: Man, w1, w2: Woman | m1 != m2 && w1 != w2 && m1.wife = w1 && m2.wife = w2 && m1.house = m2.house}

assert max2Buildings3People {no x, y, z: Building | x != y && y != z && x != z && #(house.x) >= 3 && #(house.y) >= 3 && #(house.z) >= 3}


// check max2Buildings3People for 10 but exactly 5 couples


