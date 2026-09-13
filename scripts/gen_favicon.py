"""favicon.svg → favicon-16x16.png / favicon-32x32.png / favicon.ico (Pillow 재현 렌더)"""
from PIL import Image, ImageDraw, ImageFont

SIZE = 64
img = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))

# 대각선 그라데이션 #0f6cbd → #62abf5 (SVG x1=0,y1=0 → x2=1,y2=1)
px = img.load()
c0, c1 = (15, 108, 189), (98, 171, 245)
for y in range(SIZE):
    for x in range(SIZE):
        t = (x + y) / (2 * (SIZE - 1))
        px[x, y] = tuple(round(c0[i] + (c1[i] - c0[i]) * t) for i in range(3)) + (255,)

# 둥근 사각형 마스크 rx=14
mask = Image.new("L", (SIZE, SIZE), 0)
ImageDraw.Draw(mask).rounded_rectangle([0, 0, SIZE - 1, SIZE - 1], radius=14, fill=255)
img.putalpha(mask)

d = ImageDraw.Draw(img)

# 텍스트 "AI" — x=29 중심, y=44 기준선, weight 800 ≈ Arial Bold 29px
font = ImageFont.truetype(r"C:\Windows\Fonts\arialbd.ttf", 29)
d.text((29, 44), "AI", font=font, anchor="ms", fill=(255, 255, 255, 255))

# 우상단 원 (50,16) r=6, 흰색 opacity 0.85
overlay = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
ImageDraw.Draw(overlay).ellipse([50 - 6, 16 - 6, 50 + 6, 16 + 6], fill=(255, 255, 255, 217))
img = Image.alpha_composite(img, overlay)

img.resize((16, 16), Image.LANCZOS).save("static/favicon-16x16.png")
img.resize((32, 32), Image.LANCZOS).save("static/favicon-32x32.png")
img.save("static/favicon.ico", sizes=[(16, 16), (32, 32), (64, 64)])
print("done")
