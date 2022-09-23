class AB:
    def __init__(self, izq, raiz, der):
        self.izq = izq
        self.raiz = raiz
        self.der = der

    def altura(self):
        if self.izq == None and self.der == None:
            return 0
        elif self.izq == None:
            return 1 + self.der.altura()
        elif self.der == None:
            return 1 + self.izq.altura()
        else:
            return 1 + max(self.izq.altura(), self.der.altura())


def obtener_nivel(ab, n):
    if ab is None:
        return str([])

    if n == 0:
        return str([ab.raiz])
    else:
        return obtener_nivel(ab.izq, n-1) + " " + obtener_nivel(ab.der, n-1)

def print_arbol(ab):
    altura = ab.altura()
    for i in range(altura+1):
        nivel = "  " * (altura - i) + obtener_nivel(ab, i)
        print(nivel)

def ultimo_nivel_completo(ab):
    if ab.izq != None and ab.der != None:
        return 1 + min(ultimo_nivel_completo(ab.izq), ultimo_nivel_completo(ab.der))
    else:
        return 1

def espejo(ab):
    if ab == None:
        return ab
    else:
        return AB(espejo(ab.der), ab.raiz, espejo(ab.izq))


if __name__ == "__main__":
    nodo_izq = AB(None, 2, AB(None, 5, None))
    nodo_der = AB(nodo_izq, 3, nodo_izq)
    arbol = AB(nodo_der, 1, nodo_izq)

    print(ultimo_nivel_completo(arbol))
    print(espejo(arbol))
