/// @description 
// Puede escribir su código en este editor
#region Gravedad
scrComprovarGravedad(ancho);

if (vspeed > 0) {
	scrComprovarColoisionSuelo(ancho);
} else if (vspeed < 0) {
	scrComprovarColisionSobre(ancho, alto);
}
#endregion

#region Colision Plataforma
scrComprovarColisionPlataforma(ancho)
#endregion

#region Cambiar Sprite
scrActualizarSprite();

#endregion