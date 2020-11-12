
giris=input("Lütfen SA DK giriniz (Örn: 11 45) :")

kes=giris.split()
saat=int(kes[0])
dakika=int(kes[1])

saat=saat%12

yelkovan=dakika/5

fazlaAdim=dakika*1/60
akrep=saat+fazlaAdim



derece=int(abs(akrep-yelkovan)*30)
   

if derece>180:
    derece=360-derece  
print("Akrep ve yelkovan arasındaki açı: {} derecedir ".format(abs(derece)))

