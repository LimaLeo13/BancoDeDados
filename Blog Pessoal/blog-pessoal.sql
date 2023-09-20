CREATE TABLE [tb_temas] (
	id bigint NOT NULL,
	Descricao varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_TEMAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_postagens] (
	id bigint NOT NULL,
	Titulo varchar(500) NOT NULL,
	Texto varchar(500) NOT NULL,
	Data datetimeoffset NOT NULL,
	TemasId bigint NOT NULL,
	UsuariosId bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(500) NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk0] FOREIGN KEY ([TemasId]) REFERENCES [tb_temas]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk0]
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk1] FOREIGN KEY ([UsuariosId]) REFERENCES [tb_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk1]
GO


