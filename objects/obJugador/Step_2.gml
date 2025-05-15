/// @description 
// Puede escribir su código en este editor
#region Gravedad
scrComprovarGravedad(ancho);

if (vspeed > 0) {
	scrComprovarColisionSuelo(ancho);
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