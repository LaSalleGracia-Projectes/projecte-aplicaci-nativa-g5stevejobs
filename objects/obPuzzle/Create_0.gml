slots = [
	[3,0],
	[5,4,2,1,0],
	[0,0]
];

puzzleWidth = 700;
puzzleHeight = 500;
selectedColumn = -1;
selectedElement = -1;
isHoldingElement = false;
holdingValue = 0;
mouseOffsetX = 0;
mouseOffsetY = 0;
hasWon = false;

elementColors = ds_map_create();
elementColors[? 5] = make_color_rgb(200, 0, 0);
elementColors[? 4] = make_color_rgb(200, 100, 0);
elementColors[? 3] = make_color_rgb(200, 200, 0);
elementColors[? 2] = make_color_rgb(0, 180, 0);
elementColors[? 1] = make_color_rgb(0, 0, 180);

winAnimTimer = 0;
winAnimDuration = 180;
winColumnIndex = -1;