from haishoku.haishoku import Haishoku
import sys


def convert_to_hex(rgba) :

    return "#" + ('%02x%02x%02x%02x' % rgba)


haishoku = Haishoku.loadHaishoku(str(sys.argv[1]))

palette = []

for color in haishoku.palette:
    hex_color = convert_to_hex((color[1][0], color[1][1], color[1][2], 255))
    palette += hex_color
    print(hex_color)

