-- ==========================================
-- ESTRUTURA DE BANCO DE DATOS - CLÍNICA VIDA+
-- PROJETO: Sistema de Gestão de Pacientes e Agendamentos
-- ==========================================

-- 1. TABELA DE UNIDADES (Moema, Vila Mariana, Itaim Bibi)
CREATE TABLE IF NOT EXISTS unidades (
    "eu ia" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    endereco TEXT
);

-- 2. TABELA DE FISIOTERAPEUTAS
CREATE TABLE IF NOT EXISTS fisioterapeutas (
    "eu ia" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    _id UUID, -- Identificador de sincronização de interface
    unidade_id UUID REFERENCES unidades("eu ia") ON DELETE SET NULL
);

-- 3. TABELA DE PACIENTES
CREATE TABLE IF NOT EXISTS pacientes (
    "eu ia" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome TEXT NOT NULL,
    "WhatsApp" TEXT,
    "e-mail" TEXT,
    status TEXT DEFAULT 'Ativo', -- Ativo, Inativo, Pendente de Follow-up
    fisioterapeuta_responsavel UUID REFERENCES fisioterapeutas("eu ia"),
    unidade_preferencial UUID REFERENCES unidades("eu ia"),
    plano_tratamento TEXT,
    _id UUID
);

-- 4. TABELA DE AGENDAMENTOS (Core da Automação n8n)
CREATE TABLE IF NOT EXISTS agendamentos (
    "eu ia" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    paciente_id UUID REFERENCES pacientes("eu ia") ON DELETE CASCADE,
    fisioterapeuta_id UUID REFERENCES fisioterapeutas("eu ia"),
    data_hora TIMESTAMPTZ NOT NULL,
    status TEXT DEFAULT 'Pendente', -- Pendente, Confirmado, No-show, Concluído
    notas TEXT
);