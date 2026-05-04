🏥 Clínica Vida+ — Sistema de Gestão e Automação Inteligente
Este projeto apresenta uma solução Full-Stack e No-Code de alto nível para a gestão da Clínica Vida+. O foco principal é a recuperação de pacientes por meio de follow-ups inteligentes, automação de processos e análise clínica com IA para suporte à decisão da Dra. Fernanda.

🚀 Links do Projeto
Aplicação Web (Interface):  vida-plus-manager.adorável.aplicativo

🛠️ Arquitetura Técnica e Stack
A solução foi desenhada seguindo padrões de escalabilidade e segurança:

Front-end: Interface desenvolvida em Lovable, focada em UX/UI para recepção e gestão clínica.

Back-end & Database: Banco de dados relacional via Supabase, garantindo integridade de dados e segurança.

Engine de Automação: Workflows complexos orquestrados no n8n.

Inteligência Artificial: Integração via API com Google Gemini 1.5 Flash para processamento de linguagem natural (NLP) e análise de dados.

⚙️ Workflows de Automação (n8n)
Foram implementados fluxos críticos para a saúde financeira e operacional da clínica:

Lembrete de Consulta (Follow-up Ativo): Automação via Cron que consulta o Supabase e envia notificações automáticas 24h antes da sessão para reduzir a taxa de no-show.

Análise Clínica com IA: Workflow que processa o histórico de sessões do paciente e gera resumos inteligentes para a Dra. Fernanda.

Gestão de Churn: Algoritmo que identifica pacientes sem agendamentos há mais de 7 dias e dispara alertas de "Risco de Abandono".

🧠 Inteligência Artificial & Prompt Engineering
O sistema utiliza IA para transformar dados brutos em insights clínicos.

Prompt Estruturado:
A IA atua como assistente clínica, analisando evolução, frequência, pontos de atenção e gerando uma classificação de risco (Baixo, Atenção, Alto) com base no histórico do Supabase.

Nota Técnica: Durante a fase de deploy, optei pela utilização do Gemini 1.5 Flash em substituição ao GPT-4o para garantir maior resiliência e estabilidade na entrega, mantendo a alta qualidade do processamento de dados.

🧪 Instruções para Teste (Postman)
Para validar a integração da IA e do Back-end, utilize o arquivo Postman anexo ao repositório:

Importe a collection no Postman.

Configure a URL do Webhook do n8n.

Envie o POST com o paciente_id desejado.

O sistema retornará o JSON completo com o resumo gerado pela IA.

📈 Diferenciais da Implementação (Rois Automações)
Separação de Preocupações: Arquitetura que separa a interface da lógica de automação, permitindo manutenção ágil.

Foco em Negócio: O sistema não apenas agenda, mas atua proativamente na retenção de pacientes e visibilidade gerencial.

Documentação N2: Estrutura pronta para suporte técnico especializado, incluindo logs de execução no n8n e mapeamento de banco SQL.

