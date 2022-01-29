/// @description Insert description here
// You can write your code in this editor


x += (oHero.x - x) / 5
y += (oHero.y - y) / 5 - (6 + (720 - oHero.weed_timer) / 100)

image_speed = oHero.weed_timer/300
image_xscale = sqrt(oHero.weed_timer/1470)
image_yscale = sqrt(oHero.weed_timer/1470)