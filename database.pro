facts
nondeterm pertanyaan(integer,string,symbol)
nondeterm hasil(symbol,string)
nondeterm observation(symbol)


clauses
hasil(aves, "elang, Pinguin, pipit, unta, colibri, merpati, dll").
hasil(mamalia, "harimau, kucing, paus, lumba-lumba, landak, dll").
hasil(reptil, "ular, kadal, cicak, kura-kura, penyu, dll").
hasil(amphibi, "katak, cacing, buaya, salamender, dll").

pertanyaan(0,"Apakah Hewan Yang Anda Maksud Memiliki Tulang Belakang?",bertulang).

pertanyaan(1,"Apakah Hewan Tersebut Berkaki 2?", kaki2).
pertanyaan(1,"Apakah Hewan Tersebut Berkaki 4?",kaki4).
pertanyaan(1,"Apakah Hewan Tersebut Tidak Berkaki?",kaki0).

pertanyaan(2,"Apakah Hewan Tersebut Karnifora?", karnivora).
pertanyaan(2,"Apakah Hewan Tersebut Herbifora?", herbivora).
pertanyaan(2,"Apakah Hewan Tersebut Omnifora?", omnivora).

pertanyaan(3,"Apakah Hewan Tersebut Berbulu?", berbulu).
pertanyaan(3,"Apakah Hewan Tersebut Berambut?", berambut).
pertanyaan(3,"Apakah Hewan Tersebut Berlendir?",berlendir).
pertanyaan(3,"Apakah Hewan Tersebut Bersisik?", bersisik).


pertanyaan(4,"Apakah Hewan Tersebut Bernafas dengan paru paru dan kulit?", parukulit).
pertanyaan(4,"Apakah Hewan Tersebut Bernafas dengan kulit?", kulit).
pertanyaan(4,"Apakah Hewan Tersebut Bernafas dengan paru paru dan memiliki kantung udara?", parukantong).
pertanyaan(4,"Apakah Hewan Tersebut Bernafas dengan paru paru?", paru).


pertanyaan(5,"Apakah Hewan Tersebut Bergerak Dengan Jalan dan Berenang?",jalanberenang).
pertanyaan(5,"Apakah Hewan Tersebut Bergerak Dengan Terbang?",terbang). 
pertanyaan(5,"Apakah Hewan Tersebut Bergerak Dengan Melata?",melata).
pertanyaan(5,"Apakah Hewan Tersebut Bergerak Dengan Berjalan?",berjalan).
pertanyaan(5,"Apakah Hewan Tersebut Bergerak Dengan Berenang?",berenang).


pertanyaan(6,"Apakah Hewan Tersebut Berkembang Biak Dengan Bertelur ?",bertelur).
pertanyaan(6,"Apakah Hewan Tersebut Berkembang Biak Dengan Melahirkan ?",melahirkan).


goal
save("ai.db").