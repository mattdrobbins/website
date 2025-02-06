npx @tailwindcss/cli -i ./wwwroot/input.css -o ./wwwroot/output.css

rm -f middleware.exe
dune build
cp _build/default/middleware.exe .