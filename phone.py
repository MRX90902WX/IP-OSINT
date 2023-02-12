from bs4 import BeautifulSoup as htmlparser
import requests

print("\033[1;31m             _")
print("\033[1;31m   _   _ __ | |__   ___  _ __   ___")
print("\033[1;31m _| |_| '_ \| '_ \ / _ \| '_ \ / _ \ ")
print("\033[1;31m|_   _| |_) | | | | (_) | | | |  __/")
print("\033[1;31m  |_| | .__/|_| |_|\___/|_| |_|\___|")
print("\033[1;31m      |_|")
print("")

def lookup(phone_number):
    http = requests.get(f"https://free-lookup.net/{phone_number}")
    html = htmlparser(http.text, "html.parser")
    infos = html.findChild("ul", {"class": "report-summary__list"}).findAll("div")

    return {k.text.strip(): infos[i+1].text.strip() if infos[i+1].text.strip() else print("") for i, k in enumerate(infos) if not i % 2}

def main():
    while True:
        try:
            phone_number = input("\033[1;32m[+]Introdusca numero telefono: \033[1;37m").strip().replace("-", "").replace(" ", "").replace("+", "")
        except KeyboardInterrupt:
            return

        try:
            infos = lookup(phone_number)
        except AttributeError:
            print("Error: numero de telefono invalido\n")
            continue

        [print(f"{info}: {infos[info]}") for info in infos]
        print("\n")
        exit()

if __name__ == "__main__":
    main()
 
