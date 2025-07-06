# 🚀 Basic_Project — Padrão Flutter

**📌 Versão:** 3.0  
**🗓️ Atualização:** 11/06/2025  
**👥 Responsável:** Time de Arquitetura

---

## 🎯 Objetivo

Padronizar o desenvolvimento Flutter com foco em:

✅ Estrutura por funcionalidade (Feature-First)  
✅ Separação de UI, lógica e dados  
✅ Código limpo, reutilizável e testável

---

## 🧩 Gerenciamento de Estado

🔹 `setState` → Para atualizações **simples e locais** na UI  
🔸 `Command` → Para ações **complexas**, como requisições, validações ou fluxos com múltiplos passos  

---

## 🗂️ Organização de Pastas

```bash
lib/
├── app.dart
├── main.dart
│
├── core/                # Serviços e recursos globais
│   ├── constants/
│   ├── services/
│   ├── themes/
│   └── utils/
│
├── features/            # Organização por funcionalidade
│   └── <feature>/
│       ├── controllers/
│       ├── models/
│       ├── services/
│       └── widgets/
│
├── models/              # Modelos globais
└── shared/              # Componentes reutilizáveis
    ├── controllers/
    ├── extensions/
    ├── mixins/
    └── widgets/
```

---

## 🧱 Organização de Arquivos

| 📁 Item                | 📌 Local                          |
|------------------------|-----------------------------------|
| Widgets reutilizáveis  | `shared/widgets/`                |
| Controllers globais    | `shared/controllers/`            |
| Elementos específicos  | `features/<nome>/`               |
| Serviços globais       | `core/services/`                 |
| Modelos globais        | `models/`                        |

> ⚠️ Lógica somente em `controllers/` ou `services/`  
> 🚫 Nunca colocar lógica em `main.dart` ou `*.page.dart`

---

## 💬 Comentários no Código

- Um por linha, com **motivo e construção**  
- Sempre na linha de cima do código em questão, nunca do lado, pois isso pode quebrar a organização do código.  
- Separar as seções por comentários **visuais**, seguir a aparência dos que já tem no código.

---

## 📵 Nova Regra: Proibição de Código Completo

> **🚫 Nunca fornecer o código completo de um arquivo Flutter.**  
> Sempre que o desenvolvedor pedir para criar algo (como botão, formulário, widget, controller, etc), o ChatGPT deve responder com um **passo a passo explicativo**, guiando o desenvolvedor na criação.

### Exemplo de abordagem correta:
1. Oriente a criar um novo arquivo com o nome apropriado.
2. Indique qual widget ou classe usar.
3. Explique como estruturar a lógica no controller.
4. Mostre como conectar os componentes na interface.
5. Só continue se o desenvolvedor solicitar o próximo passo.

> Essa abordagem promove aprendizado ativo, clareza e evita dependência de cópia-cola de arquivos inteiros.

---

## 🦑 **Time de Arquitetura** 🦑
