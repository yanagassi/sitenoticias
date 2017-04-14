-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2017 at 10:34 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banco`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visita` int(11) NOT NULL,
  `foto` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titulo`, `post`, `data`, `visita`, `foto`) VALUES
(1, 'Reforma da Previdencia deve ser votada ate julho, diz Temer', 'A uma plateia de empresarios, o presidente Michel Temer (PMDB) defendeu, no inicio da tarde desta terca-feira (4), em Sao Paulo, a reforma da Previdencia como essencial para o crescimento do pais. Ele preve que a reforma seja votada no Congresso até julho. Ele também admitiu "adaptação" ou conserto na terceirização "se houver necessidade".\r\n\r\n"Relatores acham que é possível votar. Naturalmente haverá uma ou outra adequação que será feita em comum acordo com o governo e, se for assim, acredito que será votado até junho ou julho", disse.\r\n\r\nENTENDA: as propostas de Temer para a Previdência Social\r\n\r\nTemer disse que programas sociais e os investimentos ficam ameaçados caso a reforma não seja aprovada.\r\n', '2017-04-08 22:52:58', 2, ''),
(2, 'Camara aprova texto-base de projeto que autoriza servicos como o do Uber', 'simbolica (sem contagem de votos), o texto-base do projeto que autoriza o funcionamento de aplicativos de transporte individual privado pago, como o Uber (entenda os pontos do projeto mais abaixo).\n\nESPECIAL G1: Uber x Taxi\n\nPara concluir a votação, contudo, os parlamentares vão analisar, ainda nesta terça, as chamadas emendas, sugestões dos deputados que podem alterar o conteúdo original da proposta.\n\nO texto aprovado nesta terça foi relatado pelo deputado Daniel Coelho (PSDB-PE) e autoriza o funcionamento dos aplicativos, mas prevê que a regulamentação e a fiscalização caberão aos municípios e ao Distrito Federal.\n\nA versão original do projeto, de autor', '2017-04-08 22:52:58', 1, ''),
(3, 'Chapa Dilma-Temer: TSE da mais prazo para defesas e suspende julgamento', '\n\nOs sete ministros do Tribunal Superior Eleitoral (TSE) decidiram por unanimidade nesta terca-feira (4) reabrir a etapa de coleta de provas, autorizar depoimentos de novas testemunhas e conceder prazo adicional de cinco dias para as alegações finais das defesas.\n\nCom isso, após 1 hora e 45 minutos de sessão, o julgamento da ação que pede a cassação da chapa Dilma Rousseff-Michel Temer foi suspenso e poderá ser retomado somente em maio.\n\nDe acordo com o presidente do TSE, ministro Gilmar Mendes, o prazo de cinco dias para as alegações finais da defesa passará a contar depois que o TSE ouvir as novas testemunhas.\n\nNo início da tarde, ao chegar para sessão no STF, Gilmar Mendes disse que, agora, a retomada do julgamento depende do relator, Herman Benjamin. "É bom operar ortodoxamente nessas coisas", disse o ministro, sobre a decisão de dar mais prazo às defesas.\n\nO corregedor do TSE e relator do caso, ministro Herman Benjamin, ouvirá os depoimentos do ex-ministro da Fazenda Guido Mantega, dos publicitários João Santana e Mônica Moura e de André Santana, que, segundo o Ministério Público, auxiliava o marqueteiro da campanha de Dilma e Temer.\n\nAlém disso, até o fim deste mês, o presidente do TSE, Gilmar Mendes, fará uma série de viagens ao exterior – ele vai para os EUA na quinta-feira (6), passará por Portugal e França e retornará ao Brasil somente no dia 25.\n\nO pedido de mais prazo foi formulado no início do julgamento pelo advogado Flávio Caetano, que defende a ex-presidente Dilma Rousseff. A defesa quer analisar melhor as provas apresentadas por ex-dirigentes da Odebrecht e entregar novas alegações finais (o documento no qual são feitas as últimas manifestações das defesas sobre o caso).\n\nO julgamento é motivado por ação impetrada em 2014 pelo diretório nacional do PSDB e pela coligação Muda Brasil, encabeçada na última eleição presidencial pelo senador Aécio Neves (PSDB-MG) e pelo atual ministro das Relações Exteriores, Aloysio Nunes (PSDB-SP). A chapa tucana foi derrotada por Dilma e Temer no segundo turno.\n\nNa ação apresentada à Justiça eleitoral em dezembro de 2014 – dois meses depois da derrota nas urnas –, o PSDB acusou a chapa Dilma-Temer de ter cometido abuso de poder político e econômico, de ter recebido dinheiro de propina do esquema de corrupção que atuava na Petrobras investigado pela Operação Lava Jato. Atualmente, o PSDB integra do governo Temer, no qual detém quatro ministérios.\n', '2017-04-09 00:22:40', 15, ''),
(4, 'Seupremo Tribunal  Federal proibe greves para todas as carreiras policiais', 'Com 7 votos a 3, os ministros do Supremo Tribunal Federal (STF) declararam nesta quarta-feira (5) inconstitucional o direito de greve de servidores publicos de orgaos de seguranca e decidiram proibir qualquer forma de paralisacao nas carreiras policiais.\r\n\r\nEmbora tenha proibido as greves de policiais, a Suprema Corte também decidiu, por maioria, que o poder público tera, a partir de agora, a obrigação de participar de mediações criadas por entidades que representam servidores das carreiras de segurança pública para negociar interesses da categoria.\r\n\r\nA decisão da Suprema Corte terá a chamada repercussão geral, ou seja, deverá ser seguida, a partir de agora, por todas as instâncias da Justiça.\r\n\r\nA inconstitucionalidade das greves de policiais foi declarada no julgamento de um recurso apresentado pelo governo de Goiás contra uma decisão do Tribunal de Justiça do estado que havia considerado legal uma paralisação feita, em 2012, por policiais civis goianos.\r\n\r\nNo processo, diversas entidades se manifestaram contra a possibilidade de greve por agentes de segurança, com base no artigo 142 da Constituição, que proíbe sindicalização e greve de integrantes das Forças Armadas\r\nDesde 2009, diversas decisões de ministros do STF consideraram ilegais as greves de policiais militares, civis e federais, sob o argumento de que representam risco para a segurança pública e para a manutenção da ordem.\r\n', '2017-04-10 21:19:09', 17, ''),
(64, 'Nao vou rir, nem vou chorar, diz Lula sobre acusaÃ§Ãµes de Marcelo Odebrecht', '\r\n\r\nO ex-presidente Luiz InÃ¡cio Lula da Silva afirmou nesta quinta-feira (13) durante entrevista a uma rÃ¡dio da Bahia que Ã© â€œinverosÃ­milâ€ e â€œirrealâ€ a acusaÃ§Ã£o feita contra ele pelo empresÃ¡rio Marcelo Odebrecht. Lula disse que nÃ£o vai â€œrir, nem chorarâ€ diante das denÃºncias, mas que vai ler cada peÃ§a do processo junto com seus advogados e exigir provas.\r\n\r\nMarcelo Odebrecht disse em depoimento ao juiz SÃ©rgio Moro, divulgado nesta quarta-feira (12), que destinou milhÃµes para o "amigo", codinome referente ao ex-presidente Luiz InÃ¡cio Lula da Silva. Primeiro, ele cita o depÃ³sito de R$ 35 milhÃµes e depois fala em R$ 40 milhÃµes. A conta, diz Odebrecht, era gerida pelo ex-ministro petista Antonio Palocci.\r\n\r\n"Ã‰ tÃ£o inverosÃ­mil as acusaÃ§Ãµes, Ã© tÃ£o irreal as acusaÃ§Ãµes, que eu nÃ£o vou rir, nem vou chorar. Eu vou analisar corretamente, vou conversar com os advogados, pegar o processo, ler cada peÃ§a do processo para que a gente possa chegar no dia certo e dizer claramente o seguinte: a delaÃ§Ã£o tem que ser provadaâ€, disse Lula.\r\n\r\n"Ontem, houve mais um absurdo: a delaÃ§Ã£o do Marcelo Odebrecht. Eu atÃ© compreendo que o Marcelo estÃ¡ preso hÃ¡ dois anos, atÃ© compreendo que ele tem famÃ­lia fora, que ele deve estar comendo o pÃ£o que o diabo amassou, que talvez ele esteja tentando criar condiÃ§Ãµes para sair da cadeia", declarou em outro trecho da entrevista.\r\n\r\nO depoimento de foi prestado na segunda-feira (10), em aÃ§Ã£o penal da Lava Jato que envolve Antonio Palocci, o ex-presidente do Grupo Odebrecht, Marcelo Odebrecht, e outros 13 rÃ©us. Nesta quarta (12), o juiz SÃ©rgio Moro retirou o sigilo dos interrogatÃ³rios dessa aÃ§Ã£o.\r\n\r\nNa entrevista Ã  rÃ¡dio nesta quinta, Lula disse estar â€œmuito tranquiloâ€. â€œEu continuo desafiando qualquer empresÃ¡rio brasileiro, qualquer empresÃ¡rio, a dizer que um dia o Lula pediu R$ 10 pra ele ou alguÃ©m. Se alguÃ©m pediu em meu nome, a pessoa que pediu tem que ser presa, porque eu nunca autorizei ninguÃ©m a pedir dinheiro em meu nomeâ€, afirmou.\r\n\r\nâ€œEu nÃ£o posso ficar nervoso, eu nÃ£o posso perder a cabeÃ§a com cada coisa dessaâ€, disse. â€œHoje eu vou conversar com os advogados, vou comeÃ§ar a ler a peÃ§a e vou me preparar para o meu depoimento. E a vida continua, vou continuar fazendo polÃ­tica. O dia que alguÃ©m provar um erro meu, ou R$ 10 ilÃ­citos na minha vida, eu paro com a polÃ­tica", completou.\r\n', '2017-04-13 16:06:27', 4, '76a03ef270b45da7bc33e23552bbe870.jpg'),
(65, 'Nao vou rir, nem vou chorar, diz Lula sobre acusacoes de Marcelo Odebrecht ', 'O ex-presidente Luiz Inácio Lula da Silva afirmou nesta quinta-feira (13) durante entrevista a uma rádio da Bahia que é “inverosímil” e “irreal” a acusação feita contra ele pelo empresário Marcelo Odebrecht. Lula disse que não vai “rir, nem chorar” diante das denúncias, mas que vai ler cada peça do processo junto com seus advogados e exigir provas.\r\n\r\nMarcelo Odebrecht disse em depoimento ao juiz Sérgio Moro, divulgado nesta quarta-feira (12), que destinou milhões para o "amigo", codinome referente ao ex-presidente Luiz Inácio Lula da Silva. Primeiro, ele cita o depósito de R$ 35 milhões e depois fala em R$ 40 milhões. A conta, diz Odebrecht, era gerida pelo ex-ministro petista Antonio Palocci.\r\n\r\n"É tão inverosímil as acusações, é tão irreal as acusações, que eu não vou rir, nem vou chorar. Eu vou analisar corretamente, vou conversar com os advogados, pegar o processo, ler cada peça do processo para que a gente possa chegar no dia certo e dizer claramente o seguinte: a delação tem que ser provada”, disse Lula.\r\n\r\n"Ontem, houve mais um absurdo: a delação do Marcelo Odebrecht. Eu até compreendo que o Marcelo está preso há dois anos, até compreendo que ele tem família fora, que ele deve estar comendo o pão que o diabo amassou, que talvez ele esteja tentando criar condições para sair da cadeia", declarou em outro trecho da entrevista.\r\n\r\nO depoimento de foi prestado na segunda-feira (10), em ação penal da Lava Jato que envolve Antonio Palocci, o ex-presidente do Grupo Odebrecht, Marcelo Odebrecht, e outros 13 réus. Nesta quarta (12), o juiz Sérgio Moro retirou o sigilo dos interrogatórios dessa ação.\r\n\r\nNa entrevista à rádio nesta quinta, Lula disse estar “muito tranquilo”. “Eu continuo desafiando qualquer empresário brasileiro, qualquer empresário, a dizer que um dia o Lula pediu R$ 10 pra ele ou alguém. Se alguém pediu em meu nome, a pessoa que pediu tem que ser presa, porque eu nunca autorizei ninguém a pedir dinheiro em meu nome”, afirmou.\r\nSZS', '2017-04-13 16:21:56', 875, '55100d951777ccfbcb8bcef9241fb309.jpg'),
(67, 'Veja casos em que o pagamento de propina rendeu benefÃ­cios concretos a Odebrecht, segundo delatores', 'Em muitos dos casos de pagamentos indevidos a polÃ­ticos denunciados na operaÃ§Ã£o Lava-Jato, funcionÃ¡rios e ex-funcionÃ¡rios da Odebrecht relataram que as propinas renderam benefÃ­cios concretos Ã  construtora.\r\n\r\nAprovaÃ§Ã£o de medidas provisÃ³rias e leis que atendem aos seus interesses e interferÃªncias em licitaÃ§Ãµes, principalmente da Ã¡rea de transportes e hidrelÃ©tricas, estÃ£o entre os casos mais comuns.\r\n\r\nAs acusaÃ§Ãµes aparecem em inquÃ©rito autorizado pelo ministro do Supremo Tribunal Federal (STF) Edson Fachin a pedido do procurador-geral da RepÃºblica, Rodrigo Janot. A PGR fez o pedido com base nas delaÃ§Ãµes dos ex-executivos da Odebrecht.\r\n\r\nVeja a seguir uma lista desses casos, sempre segundo os relatos e os documentos apresentados pelos delatores. Os envolvidos negam as irregularidades. A defesa de cada um dos investigados pode ser vista clicando no nome do polÃ­tico, onde hÃ¡ links para as reportagens que detalham cada denÃºncia.\r\n', '2017-04-13 17:40:29', 3, '05a8095b45d17a74770c9b2788e38842.png');

-- --------------------------------------------------------

--
-- Table structure for table `temperatura`
--

CREATE TABLE IF NOT EXISTS `temperatura` (
  `graus` varchar(40) NOT NULL,
  `foto` varchar(40) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `temperatura`
--

INSERT INTO `temperatura` (`graus`, `foto`, `id`) VALUES
('15Âº', 'Chuva', 2);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`) VALUES
(1, 'Yan Esteves', 'admin', 'admin'),
(2, '', '', 'd74741a22756f18df083e54577cb603b.');

-- --------------------------------------------------------

--
-- Table structure for table `visita`
--

CREATE TABLE IF NOT EXISTS `visita` (
  `visita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visita`
--

INSERT INTO `visita` (`visita`) VALUES
(289);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
