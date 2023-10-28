from flask import Flask, render_template

app = Flask(__name)

# Rota para exibir a página de exercício 1
@app.route('/exercicio1')
def mostrar_exercicio1():
    # Use render_template para renderizar a página HTML
    return render_template('Aulas.html')

# Rota para exibir a página de exercício 2
@app.route('/exercicio2')
def mostrar_exercicio2():
    # Use render_template para renderizar a página HTML
    return render_template('exercicio2.html')

if __name__ == '__main__':
    app.run()
