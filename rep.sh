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

git commit -a "Nowa komenda commit z parametrem -a"		# 


