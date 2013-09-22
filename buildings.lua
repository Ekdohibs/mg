local W = minetest.get_content_id("default:wood")
local WS = minetest.get_content_id("default:water_source")
local S = minetest.get_content_id("farming:soil_wet")
local WH = minetest.get_content_id("farming:wheat_8")
local CO = minetest.get_content_id("farming:cotton_8")
local A = minetest.get_content_id("air")
local I = minetest.get_content_id("ignore")
local G = minetest.get_content_id("default:glass")
local C = minetest.get_content_id("default:cobble")
local T = minetest.get_content_id("default:tree")
local WG = minetest.get_content_id("wool:grey")
local FW = minetest.get_content_id("default:fence_wood")
local TRXM = {node={name="default:torch", param2=2}, rotation = "wallmounted"}
local TRXP = {node={name="default:torch", param2=3}, rotation = "wallmounted"}
local TRZM = {node={name="default:torch", param2=5}, rotation = "wallmounted"}
local TRZP = {node={name="default:torch", param2=4}, rotation = "wallmounted"}
local TRU = {node={name="default:torch", param2=1}}
local WS_ = {node={name="default:water_source"}}
local SWXP = {node={name="stairs:stair_wood", param2=3}}
local SWXM = {node={name="stairs:stair_wood", param2=1}}
local SWZM = {node={name="stairs:stair_wood", param2=2}}
local BS = minetest.get_content_id("default:bookshelf")

local field_cotton = {
	{
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
	},
	{
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
		{CO, A, CO, CO, A, CO, CO, A, CO},
	},
}

local field = {
	{
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
		{S, WS, S, S, WS, S, S, WS, S},
	},
	{
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
		{WH, A, WH, WH, A, WH, WH, A, WH},
	},
}

local house = {
	{
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
	},
	{
		{T, W, W, A, W, W, T},
		{W, A, A, A, A, A, W},
		{W, A, A, A, A, A, W},
		{W, A, A, A, A, A, W},
		{W, A, A, A, A, A, W},
		{W, A, A, A, A, A, W},
		{T, W, W, W, W, W, T},
	},
	{
		{T, C, C, A, C, C, T},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{T, C, G, G, G, C, T},
	},
	{
		{T, C, C, C, C, C, T},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{T, C, G, G, G, C, T},
	},
	{
		{T, C, C, C, C, C, T},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{C, A, A, A, A, A, C},
		{T, C, C, C, C, C, T},
	},
	{
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
		{W, W, W, W, W, W, W},
	},
	{
		{I, I, I, I, I, I, I},
		{I, W, W, W, W, W, I},
		{I, W, I, I, I, W, I},
		{I, W, I, I, I, W, I},
		{I, W, I, I, I, W, I},
		{I, W, W, W, W, W, I},
		{I, I, I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
		{I, I, W, W, W, I, I},
		{I, I, W, I, W, I, I},
		{I, I, W, W, W, I, I},
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
		{I, I, I, W, I, I, I},
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
		{I, I, I, I, I, I, I},
	},
}

local lamp = {
	{
		{I,  I, I},
		{I, FW, I},
		{I,  I, I},
	},
	{
		{I,  I, I},
		{I, FW, I},
		{I,  I, I},
	},
	{
		{I,  I, I},
		{I, FW, I},
		{I,  I, I},
	},
	{
		{   I, TRXM,    I},
		{TRZP,   WG, TRZM},
		{   I, TRXP,    I},
	},
}

local well = {
	{
		{C, C, C, C},
		{C, C, C, C},
		{C, C, C, C},
		{C, C, C, C},
	},
	{
		{C,  C,  C, C},
		{C, WS, WS, C},
		{C, WS, WS, C},
		{C,  C,  C, C},
	},
	{
		{C,  C,  C, C},
		{C, WS, WS, C},
		{C, WS, WS, C},
		{C,  C,  C, C},
	},
	{
		{C,  C,  C, C},
		{C, WS, WS, C},
		{C, WS, WS, C},
		{C,  C,  C, C},
	},
	{
		{C,  C,  C, C},
		{C, WS, WS, C},
		{C, WS, WS, C},
		{C,  C,  C, C},
	},
	{
		{C,  C,  C, C},
		{C, WS, WS, C},
		{C, WS, WS, C},
		{C,  C,  C, C},
	},
	{
		{C, C, C, C},
		{C, A, A, C},
		{C, A, A, C},
		{C, C, C, C},
	},
	{
		{FW, A, A, FW},
		{ A, A, A,  A},
		{ A, A, A,  A},
		{FW, A, A, FW},
	},
	{
		{FW, A, A, FW},
		{ A, A, A,  A},
		{ A, A, A,  A},
		{FW, A, A, FW},
	},
	{
		{FW, A, A, FW},
		{ A, A, A,  A},
		{ A, A, A,  A},
		{FW, A, A, FW},
	},
	{
		{C, C, C, C},
		{C, C, C, C},
		{C, C, C, C},
		{C, C, C, C},
	},
}

local fountain = {
	{
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
	},
	{
		{C, C, C, C, C},
		{C, A, A, A, C},
		{C, A, W, A, C},
		{C, A, A, A, C},
		{C, C, C, C, C},
	},
	{
		{TRU, A, A, A, TRU},
		{  A, A, A, A,   A},
		{  A, A, W, A,   A},
		{  A, A, A, A,   A},
		{TRU, A, A, A, TRU},
	},
	{
		{A, A, A, A, A},
		{A, A, A, A, A},
		{A, A, W, A, A},
		{A, A, A, A, A},
		{A, A, A, A, A},
	},
	{
		{A, A,   A, A, A},
		{A, A,   A, A, A},
		{A, A, WS_, A, A},
		{A, A,   A, A, A},
		{A, A,   A, A, A},
	},
}

local smallhouse = {
	{
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
		{C, C, C, C, C},
	},
	{
		{T, W, W, W, T},
		{W, A, A, A, W},
		{W, A, A, A, W},
		{W, A, A, A, W},
		{T, W, A, W, T},
	},
	{
		{T, W, W, W, T},
		{W, A, A, A, W},
		{G, A, A, A, G},
		{W, A, A, A, W},
		{T, W, A, W, T},
	},
	{
		{T, W, W, W, T},
		{W, A, A, A, W},
		{W, A, A, A, W},
		{W, A, A, A, W},
		{T, W, W, W, T},
	},
	{
		{I, I, I, I, I},
		{I, W, W, W, I},
		{I, W, A, W, I},
		{I, W, W, W, I},
		{I, I, I, I, I},
	},
	{
		{I, I, I, I, I},
		{I, I, I, I, I},
		{I, I, W, I, I},
		{I, I, I, I, I},
		{I, I, I, I, I},
	},
}

local house_w_garden = {
	{
		{FW, FW,   FW, FW,   FW, FW},
		{FW,  I,    I,  I,    I, FW},
		{FW,  I,    I,  I,    I, FW},
		{FW,  I,    I,  I,    I, FW},
		{FW,  I,    I,  I,    I, FW},
		{FW,  I,    I,  I, SWXM, FW},
		{ C,  C,    C,  C,    C,  C},
		{ C,  C,    C,  C,    C,  C},
		{ C,  C,    C,  C,    C,  C},
		{ C,  C,    C,  C,    C,  C},
		{ C,  C,    C,  C,    C,  C},
		{ C,  C,    C,  C,    C,  C},
		{ I,  I, SWXP,  I,    I,  I},
	},
	{
		{  I,    I,    I, I, I,   I},
		{  I,    I,    I, I, I,   I},
		{  I,    I,    I, I, I,   I},
		{  I,    I,    I, I, I,   I},
		{  I,    I,    I, I, I,   I},
		{TRU,    I,    I, I, I, TRU},
		{  T,    W,    W, W, A,   T},
		{  W,   BS, SWXP, A, A,   W},
		{  W, SWZM,    A, A, A,   W},
		{  W,    A,    A, A, A,   W},
		{  W,    A,    A, A, A,   W},
		{  T,    W,    A, W, W,   T},
		{  I,    I,    I, I, I,   I},
	},
	{
		{I,   I, I, I, I, I},
		{I,   I, I, I, I, I},
		{I,   I, I, I, I, I},
		{I,   I, I, I, I, I},
		{I,   I, I, I, I, I},
		{I,   I, I, I, I, I},
		{T,   W, G, W, A, T},
		{W, TRU, A, A, A, W},
		{W,   A, A, A, A, G},
		{W,   A, A, A, A, G},
		{W,   A, A, A, A, W},
		{T,   W, A, W, W, T},
		{I,   I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{T, W, W, W, W, T},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{T, W, W, W, W, T},
		{I, I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{T, W, W, W, W, T},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{W, A, A, A, A, W},
		{T, W, W, W, W, T},
		{I, I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, W, W, W, W, I},
		{I, W, A, A, W, I},
		{I, W, A, A, W, I},
		{I, W, W, W, W, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
	},
	{
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, W, W, I, I},
		{I, I, W, W, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
		{I, I, I, I, I, I},
	},
}

buildings = {
	{sizex= 7, sizez=7, yoff= 0, ysize= 9, scm=house},
	{sizex= 9, sizez=9, yoff= 0, ysize= 2, scm=field},
	{sizex= 9, sizez=9, yoff= 0, ysize= 2, scm=field_cotton},
	{sizex= 3, sizez=3, yoff= 1, ysize= 4, scm=lamp, weight=1/5, no_rotate=true},
	{sizex= 4, sizez=4, yoff=-5, ysize=11, scm=well, no_rotate=true, pervillage=1},
	{sizex= 5, sizez=5, yoff= 0, ysize= 5, scm=fountain, weight=1/2, pervillage=2},
	{sizex= 5, sizez=5, yoff= 0, ysize= 6, scm=smallhouse},
	{sizex=13, sizez=6, yoff= 1, ysize= 7, scm=house_w_garden},
}
