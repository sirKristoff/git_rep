#!/bin/bash

echo -e "\nint main()\n{\n\treturn 0;\n}" > main.cpp

git init	# nowe repozytorium lokalnie
git add main.cpp	# main.cpp będzie śledzony w repo
git commit -m "Rozpoczęcie projektu"	# pierwszy commit


touch README
git add README	# dodajemy następny plik do śledzenia
git status		# sprawdza status plików śledzonych (czy są zmodyfikowane)
git commit -m "Dodanie kolejnego pliku"


# README się zmienia
echo -e "Zmiana" > README

git status		# README jest zmodyfikowany i śledzony ale nie został dodany do przechowalni
git add README		# dodajemy README do przechowalni (zostanie zapamietana postać rep.sh z tego momentu i taka zostanie scommitowana)

touch tmp

# README się zmienia
echo -e "Druga zmiana" > README
# trzeba ponownie wydać komendę git add aby w przechowalni znajdowała się nowa wersja README

git status

git diff	# mówi o tym jakie zmiany w katalogu roboczym nie zostały wrzucone do przechowalni

git diff --cached	# mówi o tym co jest w przechowalni gotowe do commita

git commit -a -m "Nowa komenda commit z parametrem -a"	# dodaje do commita wszystkie pliki które były śledzone

git rm --cached README	# usówa plik ze śledzonych ale nie fizycznie z dysku
#git rm README	# usówanie pliku README ze śledzonych oraz fizyczne usunięcie go z katalogu
#git rm log/\*.log	# usuwa wszystkie pliki które mają rozszerzenie .log w katalogu log/
#git rm \*~	# usuwa wszystkie pliki kończące się na ~


#git README README.txt	# zmieni nazwę pliku na dysku i będzie śledzić plik o nowej nazwie


git log	# lista zobionych commitów odwrotnie chronologicznie
git log -2 # ostatnie dwa commity
git log -p # każdy commit ze szczegółowym opisem zmian
# --stat # statystyki zmian
# --pretty=oneline # w jednej linii
# --pretty=short full fyller

# --pretty=format:"%h - %an, %ar : %s"
	# Opcja Opis wyjścia
	# %H Hash commita
	# %h Skrócony hash commita
	# %T Drzewo hashy
	# %t Skrócone drzewo hashy
	# %P Hashe rodziców
	# %p Skrócone hashe rodziców
	# %an   Imię autora
	# %ae   e-mail autora
	# %ad   Data (jest respektowana format opcja –date=)
	# %ar   Relatywna data
	# %cn   Imię commitera
	# %ce   e-mail commitera
	# %cd   Data commitera
	# %cr   Relatywna data commitera
	# %s Tytuł

git log --pretty=format:"%h %s" --graph
