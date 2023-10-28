-- Crie o banco de dados "cardapio" se ele não existir
CREATE DATABASE IF NOT EXISTS cardapio;

-- Use o banco de dados "cardapio"
USE cardapio;

-- Crie a tabela "menu" se ela não existir
CREATE TABLE IF NOT EXISTS menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    img VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    sizes VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

-- Remova todos os registros existentes na tabela "menu" (opcional)
TRUNCATE TABLE menu;

-- Inserir os novos dados no formato JSON fornecido
INSERT INTO menu (id, name, img, price, sizes, description) VALUES
    (1, 'X-Burguer', '../images/x-burguer.png', '[8.00, 8.00, 8.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, camada dupla de mussarela e orégano'),
    (2, 'x-Salada', '../images/X-Salada.png', '[10.50, 10.50, 10.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, mussarela, calabresa fatiada, cebola e orégano'),
    (3, 'X-Salada Duplo', '../images/X-SaladaDuplo.png', '[13.00, 13.00, 13.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, camadas de mussarela, provolone, parmessão, gorgonzola e orégano'),
    (4, 'X-Banco', '../images/x_banco.png', '[13.50, 13.50, 13.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, mussarela, calabresa picada, palmito, champignon, azeitonas e orégano'),
    (5, 'X-Banco Duplo', '../images/x-Bancon-Duplo.png', '[16.00, 16.00, 16.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, mussarela, presunto, ovos, cebolas, pimentão, azeitona  e orégano'),
    (6, 'X-Calabresa', '../images/X-Calabresa.png', '[13.50, 13.50, 13.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Molho de tomate, mussarela, carne de sol, tomates em cubos, coentro, cebola, azeitona, catupiry e orégano'),
    (7, 'X-Calabresa Duplo', '../images/x-Bancon-Duplo.png', '[16.00, 16.00, 16.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (8, 'X-Egg', '../images/x-egg.png', '[13.50, 13.50, 13.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Creme de leite, lascas de chocolate e morangos'),
    (9, 'X-Frango', '../images/X-Frango.png', '[13.50, 13.50, 13.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (10, 'Hot Dog', '../images/hot-Dog.png', '[8.50, 8.50, 8.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (11, 'Pão de Queijo', '../images/PaoDeQueijo.png', '[4.00, 4.00, 4.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (12, 'Batata Frita', '../images/BatataFrita.png', '[8.00, 8.00, 8.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (13, 'Suco Caixinha', '../images/SucoCaixa.png', '[3.00, 3.00, 3.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (14, 'Suco Lata', '../images/SucoLAta.png', '[7.00, 7.00, 7.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (15, 'H2O', '../images/H2O.png', '[7.00, 7.00, 7.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (16, 'Água com Gás', '../images/Agua.png', '[4.00, 4.00, 4.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (17, 'Água sem Gás', '../images/Agua.png', '[3.50, 3.50, 3.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (18, 'Café Expresso', '../images/Cafe.png', '[2.00, 2.00, 2.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (19, 'Café com Leite', '../images/cafeLEite.png', '[3.00, 3.00, 3.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (20, 'Chá Matte', '../images/Cha_Matte.png', '[2.00, 2.00, 2.00]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar'),
    (21, 'Leite com Toddy', '../images/Toddy.png', '[3.50, 3.50, 3.50]', '["6 fatias", "8 fatias", "12 fatias"]', 'Mussarela, banana, canela e açúcar');
