xterm_colors = [
    "#000000", "#800000", "#008000", "#808000",
    "#000080", "#800080", "#008080", "#c0c0c0",
    "#808080", "#ff0000", "#00ff00", "#ffff00",
    "#0000ff", "#ff00ff", "#00ffff", "#ffffff",
] + [
    f"#{r:02x}{g:02x}{b:02x}"
    for r in (0, 95, 135, 175, 215, 255)
    for g in (0, 95, 135, 175, 215, 255)
    for b in (0, 95, 135, 175, 215, 255)
] + [
    f"#{(8+10*n):02x}{(8+10*n):02x}{(8+10*n):02x}"
    for n in range(24)
]

def hex_to_rgb(s):
    s = s.lstrip('#')
    return tuple(int(s[i:i+2], 16) for i in (0, 2, 4))

rgb_colors = [hex_to_rgb(c) for c in xterm_colors]
#print(rgb_colors)

hypersubatomic_colors = [
    "#00ae6b",
    "#f2283c",
    "#277dff",
    "#00a1b4",
    "#ffc200",
    "#d72e82",
    "#875afb",
    "#ff7a00"]

def distance_sq(rgb1, rgb2):
    return sum((a - b) ** 2 for a, b in zip(rgb1, rgb2))

def find_closest_xterm_color(hex_color):
    target = hex_to_rgb(hex_color)
    best_index, best_color = None, None
    best_d = float('inf')
    for i, col in enumerate(xterm_colors):
        rgb = hex_to_rgb(col)
        d = distance_sq(target, rgb)
        if d < best_d:
            best_d, best_index, best_color = d, i, col
    return hex_color, best_index, best_color


# example usage:

for c in (list(map(find_closest_xterm_color, hypersubatomic_colors))):
    print(c)
