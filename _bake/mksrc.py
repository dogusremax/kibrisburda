import os,sys,json
from PIL import Image, ImageFilter
H=os.path.dirname(os.path.abspath(__file__))
for pid in sys.argv[1:]:
    s=json.load(open(f'{H}/plans/{pid}.json'))['src'].rsplit('.',1)[0]
    x4=f'{H}/src/{s}_x4.png'
    if os.path.exists(x4): continue
    im=Image.open(f'{H}/src/{s}.jpg').convert('RGB'); im=im.resize((im.width*4,im.height*4),Image.LANCZOS).filter(ImageFilter.UnsharpMask(3,60,2)); im.save(x4)
