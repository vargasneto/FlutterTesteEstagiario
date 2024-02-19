
import 'package:projeto_next/models/filmes.dart';

class FilmesRepository {
  static List<Filmes> listaFilmes = [
    Filmes(
        icon: "images/django.png",
        nome: "Django Livre",
        genero: "Faroeste/ação",
        diretor: " Quentin Tarantino",
        sinopse: "Faroeste de Quentin Tarantino seguindo a vingança de um escravo liberto no sul dos EUA",
        data_lancamento: 2012),
    Filmes(
        icon: "images/ilha_do_medo.png",
        nome: "Ilha do Medo",
        genero: "Suspense",
        diretor: "Martin Scorsese",
        sinopse: "Suspense psicológico de Martin Scorsese centrado em investigações em uma instituição psiquiátrica nos anos 1950.",
        data_lancamento: 2010),
    Filmes(
        icon: "images/toy_story.png",
        nome: "Toy Story",
        genero: "Comédia/Fantasia",
        diretor: "John Lasseter",
        sinopse: "Animação da Pixar sobre a jornada emocionante de brinquedos em busca de pertencimento.",
        data_lancamento: 1995),
    Filmes(
        icon: "images/harry.png",
        nome: "Harry Potter",
        genero: "Fantasia/Aventura",
        diretor: "Chris Columbus",
        sinopse: "Série de filmes que segue o bruxo Harry Potter em sua luta contra o maligno Lord Voldemort.",
        data_lancamento: 2001),
    Filmes(
        icon: "images/panico.png",
        nome: "Panico",
        genero: "Terror",
        diretor: "Wes Craven",
        sinopse: "Filme de terror dirigido por Wes Craven, conhecido por subverter e satirizar as convenções do gênero slasher.",
        data_lancamento: 1997),
  ];
}
