domains
list = integer
pernyataan = symbol
ydann = char
kondisi = kond*
kond = string

facts
nondeterm pertanyaan(list,string,pernyataan)
nondeterm hasil(symbol,string)
nondeterm observation(symbol)
person(kondisi)
false(kond)


predicates
nondeterm next(ydann,integer)
nondeterm kelas(integer,symbol)
nondeterm mulai
nondeterm start(integer)
nondeterm awal
nondeterm solusi
nondeterm credit
nondeterm tampil(kondisi)

clauses



mulai :-	
	write("\t---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
	write("\t===================================  Pengelompokan Kelas Hewan  ===================================="),nl,
	write("\t=================================  Aves,Mamalia, Amphibi, dan Reptil  =================================="),nl,
	write("\t===================== Pilih Yang Menurut Anda Masuk Kriteria Hewan Yang Anda Maksud ====================="),nl,
	write("\t---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
	write("[c] Credit\n\n[y] Mulai\n\n[n] Exit\n\nMasukan pilihan (y jika iya/ n jika tidak(c melihat anggota)): "),
	readchar(Pilih),nl,start(Pilih).
	
start(X):-
X='y',awal;
X='c',credit,mulai;
X='n',!.

person(["\tRizky Fadillah RW\t\t1515015096"]).		person(["\tRisky Hendrawan M\t\t1515015061"]).
person(["\tNurvita Sari\t\t1515015075"]).		person(["\tFirnawan Azhari\t\t\t1515015062"]).

tampil([H|T]):-
			not(false(H)),
			write(H),nl,
			tampil(T).
tampil([H|_]):-
			assertz(false(H)).

credit 	:- write("\t*************************** Kelompok 7 ******************************"),nl,
	   write("\t------------------------------------------------------------------------------------------------------"), nl,
	   person(A),
	   tampil(A),fail.
credit.

awal :-	retractall(observation(_)),
	pertanyaan(0,T,Hasil),nl,write(T),nl,readchar(Yn),Yn='y',
	assert(observation(Hasil)),next(Yn,0).

next(Pilihan,L) :-

Pilihan='y',nl,Ls=L+1,L<=6,
	pertanyaan(Ls,T,Hasil),write(T),readchar(Yn),nl,nl,Yn='y',
	assert(observation(Hasil)),next(Yn,Ls);
	

Pilihan='y',L>5,!,solusi.	

solusi:-
	kelas(_,A),
	hasil(A,J),nl,
	write("Kelas Hewan Yang Anda Maksud Adalah : "),write(A),nl,
	write("Contoh Hewan  : " ), write(J),nl,nl,nl,mulai.

solusi:-
	write("Kriteria yang anda masukan tidak sesuai, mohon ulangi dan masukan data yang valid"),nl,nl,nl,mulai.


kelas(1, aves):-
	observation(kaki2),
	observation(herbivora),
	observation(berbulu),
	observation(parukantong),
	observation(terbang),
	observation(bertelur);
	
	observation(kaki2),
	observation(karnivora),
	observation(berambut),
	observation(paru),
	observation(berjalan),
	observation(bertelur);
	
	observation(kaki2),
	observation(omnivora),
	observation(berbulu),
	observation(parukantong),
	observation(berjalan),
	observation(bertelur);
	
	observation(kaki2),
	observation(karnivora),
	observation(berbulu),
	observation(parukantong),
	observation(terbang),
	observation(bertelur).
	
kelas(2, mamalia):-
	observation(kaki4),
	observation(karnivora),
	observation(berambut),
	observation(paru),
	observation(berjalan),
	observation(melahirkan);

	observation(kaki4),
	observation(karnivora),
	observation(bersisik),
	observation(paru),
	observation(berjalan),
	observation(melahirkan);
	
	observation(kaki4),
	observation(omnivora),
	observation(berambut),
	observation(paru),
	observation(berjalan),
	observation(melahirkan);
	
	observation(kaki4),
	observation(herbivora),
	observation(berambut),
	observation(paru),
	observation(berjalan),
	observation(melahirkan);
	
	observation(kaki0),
	observation(karnivora),
	observation(berambut),
	observation(paru),
	observation(berenang),
	observation(melahirkan).

kelas(3, reptil):-
	observation(kaki4),
	observation(karnivora),
	observation(bersisik),
	observation(paru),
	observation(berjalan),
	observation(bertelur),write(ayam1);

	observation(kaki4),
	observation(omnivora),
	observation(bersisik),
	observation(paru),
	observation(jalanberenang),
	observation(bertelur),write(ayam2);

	observation(kaki0),
	observation(karnivora),
	observation(bersisik),
	observation(paru),
	observation(melata),
	observation(bertelur).

kelas(4, amphibi):-
	observation(kaki0),
	observation(omnivora),
	observation(berlendir),
	observation(kulit),
	observation(melata),
	observation(bertelur);

	observation(kaki4),
	observation(karnivora),
	observation(bersisik),
	observation(paru),
	observation(jalanberenang),
	observation(bertelur);

	observation(kaki4),
	observation(omnivora),
	observation(berlendir),
	observation(parukulit),
	observation(jalanrenang),
	observation(bertelur).
	
goal
consult("ai.db"),
mulai.