def vert_mirror(strng)
    tiles = strng.split("\n")
    return tiles.map {|tile| tile.reverse}.join("\n")
end
def hor_mirror(strng)
    tiles = string.split("\n")
    return tiles.reverse.join("\n")
end