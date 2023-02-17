extends MeshInstance
export var alturaMaximaElevador = 30
export var velocidade = 1
export var eixo = Vector3(0,1,0) #(x,y,z)

var alturaElevador
var posicaoInicialElevador
var pontoMaximo = false
var velocidadeElevador


func _ready() -> void:
	posicaoInicialElevador = translation

func _process(delta) -> void:
	alturaElevador = posicaoInicialElevador + eixo * alturaMaximaElevador
	velocidadeElevador = eixo * velocidade
	Elevadores(delta)

func Elevadores(delta) -> void:
	if (translation < alturaElevador and pontoMaximo == false):
		translation  += velocidadeElevador*delta
	else: 
		translation -= velocidadeElevador*delta
	
	if (translation > alturaElevador and pontoMaximo == false):
		pontoMaximo = true
	if (translation < (posicaoInicialElevador) and pontoMaximo == true):
			pontoMaximo = false
