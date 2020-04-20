///drop_water();
with (player) {
    do {
        drops = true;
                
                
        drop_xx = irandom_range(0, n-1);
        drop_yy = irandom_range(0, n-1);
                    
        with(grid[#drop_xx, drop_yy]) {
            if (place_meeting(x, y, water) || place_meeting(x - CELL_W, y, shack) || place_meeting(x + CELL_W, y, crack) || 
                    place_meeting(x, y, flower)) {
                player.drops = false;
            }
        }
    } until (drops);
}

with (player) {
    instance_create(xstart + drop_xx * CELL_W, ystart + drop_yy * CELL_H, water);
}
