import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/responsive_screen.dart';
import 'photo_screen_template.dart';
import 'map_screen.dart';
import 'vespers_note_screen.dart';
import 'conclusion_screen.dart';

class Photo1AScreen extends StatelessWidget {
  const Photo1AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: MapScreen(),
      toScreen: Photo2AScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F1.png' : 'images/photos/F1.png',
      annotation:
          "Слева направо: А.В. Артюшенков; С.Г. Горшков; Н.Н. Канаков; И.В. Ламарёв; профессор С.И. Квач – начальник экспедиции; Н.А. Лашков; П.Д. Воробьёв – фотограф; П.А. Велугин.\n\nМарт 1946 г.\n\nВскоре после съёмки Николай Канаков выбыл из отряда вследствие болезни. Его заменил Е.Р. Остроумов.",
      description:
          "Фотография восьмерых участников экспедиции на кафедре исторического факультета МГУ. Все мужчины. Кто-то в костюме и с галстуком, кто-то в гимнастёрке с медалью, кто-то в невзрачной робе и с короткой стрижкой. Почти никого старше тридцати.\n\nСудя по низким сводчатым потолкам, фото сделано в подвальном помещении. Позади участников висит транспарант с лозунгом «Смена смене идёт». Ещё дальше — кульман со схемами и картами, впрочем, качество фотографии не позволяет разглядеть деталей.",
    );
  }
}

class Photo2AScreen extends StatelessWidget {
  const Photo2AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo1AScreen(),
      toScreen: Photo3AScreen(),
      // fromRoute: '/photo_1A',
      // toRoute: '/photo_3A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F2.png' : 'images/photos/F2.png',
      annotation:
          "На нужды экспедиции Оргсоветом Наркомпроса были выписаны два грузовика повышенной проходимости и три мотоцикла.\n\nОднако, первоначальные машины были совершенно негодного состояния и С.И. Квач в течение двух месяцев изыскивал технику необходимого качества.\n\nНужные машины в результате были найдены и переданы Санитарным Управлением Наркомата Обороны в ведение университета. Ещё два месяца ушло на подготовку транспорта к условиям длительного перехода.",
      description:
          "Фотография гаража: на переднем плане — «Студебеккер», подготавливаемый к пустынному пробегу. Жёсткий кунг обтянут светлой тканью, на крышу кабины установлен деревянный щит для защиты от нагрева, в открытом капоте видны большие цилиндры воздушных фильтров, выхлопная труба выведена наверх. По переднему бамперу установлена дополнительная «люстра» противотуманных фар.\n\nВ полумраке на заднем плане видны мотоциклы с колясками, но не в фокусе, поэтому непонятно, какой марки.",
    );
  }
}

class Photo3AScreen extends StatelessWidget {
  const Photo3AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo2AScreen(),
      toScreen: Photo4AScreen(),
      // fromRoute: '/photo_2A',
      // toRoute: '/photo_4A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F3.png' : 'images/photos/F3.png',
      annotation:
          "Первая часть маршрута проходила по железным дорогам и была самой простой и безопасной. Возникавшие сложности были связаны, в основном, со скудным уходом за состоянием путей – все силы были брошены на восстановление ж/д-сетей в западных частях страны – и с недавней масштабной реорганизацией Наркомата путей сообщения в Министерство путей сообщения.\n\nВпрочем, все проблемы относительно быстро решались.\n\nФото предположительно снято в октябре 1946-го на участке между Астраханью и Гурьевым.",
      description:
          "Фотография железнодорожного состава: на платформах друг за другом закреплены два «Студебеккера» и три мотоцикла. По характерной раме становится, наконец, понятно, что это за марка: «Цундаппы». Трофейные.",
    );
  }
}

class Photo4AScreen extends StatelessWidget {
  const Photo4AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo3AScreen(),
      toScreen: Photo5AScreen(),
      // fromRoute: '/photo_3A',
      // toRoute: '/photo_5A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F4.png' : 'images/photos/F4.png',
      annotation:
          "Со столицы Туркестана началась «настоящая» экспедиция. Начались и первые проблемы – местное топливо оказалось скверного качества и первоначальный план по постепенному замещению бензина в запасных цистернах пришлось корректировать – качественное топливо из запасов экономили на обратный путь, а передвигаться приходилось на местных розливах. Учащались поломки и беспокоил моторесурс техники, которая ещё даже не столкнулась с испытаниями перевалами и пустыней.",
      description:
          "Фотография «Цундаппа» на фоне минаретов и большого портала, покрытого характерным орнаментом. Под порталом толпится большая группа в полосатых халатах и чалмах. Хотя фото и чёрно-белое, можно с уверенностью сказать, что портал облицован керамикой глубокого лазоревого цвета. В углу подпись чернилами: «Самарканд».",
      label: "Самарканд",
    );
  }
}

class Photo5AScreen extends StatelessWidget {
  const Photo5AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo4AScreen(),
      toScreen: Photo6AScreen(),
      // fromRoute: '/photo_3A',
      // toRoute: '/photo_5A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F5.png' : 'images/photos/F5.png',
      annotation:
          "Нет никаких фотоматериалов с длительного участка пути между Самаркандом и Кашгаром. Причина, скорее всего, была озвучена профессором Квачем в телеграмме, отправленной из города Ош – последнем пункте с телеграфом. В ней упоминается, что фотограф отряда, Павел Воробьёв, болен, но без подробностей. Кроме того, Квач сетовал, что техника начинает сдавать, а впереди ещё путь через Памир и горные перевалы.\n\nВпрочем, до Кашгара группа добралась и готовилась к походу в пустыню.",
      description:
          "Фотография сгрудившихся участников экспедиции вокруг открытого капота одного из «Студебеккеров». Чуть правее один из группы (профессор Квач?) общается с двумя местными, невысокими, в халатах и тюбетейках. На фоне выстроились в ряд разномастные глинобитные домики. В углу теми же чернилами и тем же почерком: «Кашгар».",
      label: "Кашгар",
    );
  }
}

class Photo6AScreen extends StatelessWidget {
  const Photo6AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo5AScreen(),
      toScreen: Photo7AScreen(),
      // fromRoute: '/photo_5A',
      // toRoute: '/photo_7A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F6.png' : 'images/photos/F6.png',
      annotation:
          "Большую часть пути по пустыне отряд проделывал ночью, сберегая технику от работы при высоких температурах. Естественные сложности возникали при ориентировании: скудные картографические данные района, путанные материалы из первоисточников, проблемы с компасами из-за повсеместных магнитных аномалий, необходимость ориентироваться по звёздам. Всё приводило к дополнительным временным затратам.\n\nТак же наметились первые признаки разлада в коллективе.",
      description:
          "Ночное фото «Студебеккера» на фоне засвеченной вспышкой пустыни. Трое участников в свете фар откапывают перед грузовиком две колеи. Фонтан песка, сорвавшийся с одной из лопат, навсегда застыл в свете вспышки. В темноте кабины — светящаяся точка сигареты.",
    );
  }
}

class Photo7AScreen extends StatelessWidget {
  const Photo7AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo6AScreen(),
      toScreen: Photo8AScreen(),
      // fromRoute: '/photo_6A',
      // toRoute: '/photo_8A',
      photoLink:
          kReleaseMode ? 'assets/images/photos/F7.png' : 'images/photos/F7.png',
      annotation:
          "Эффект зиккурата, описанный в материалах немецких археологов, отчётливо проявляется и на данной фотографии: явное чувство тревоги, опасности, исходящей от древнего сооружения. И при этом неуютная притягательность, гипнотическое желание приблизиться.\n\nСкорее всего, участники экспедиции в момент съёмок испытывали похожее чувство, только многажды сильнее.",
      description:
          "На переднем плане фотографии — оба грузовика и мотоциклы. Все члены экспедиции за исключением фотографа стоят спиной к камере. Они смотрят вдаль, туда, где посреди плоской пустыни возвышается огромный чёрный зиккурат.\n\nМногоярусная пирамида с длинной лестницей, ведущей к самой вершине. Все линии геометрически чёткие и точные, не тронутые временем. От одного взгляда на это угольно-чёрное сооружение становится не по себе.",
    );
  }
}

class Photo8AScreen extends StatelessWidget {
  const Photo8AScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo7AScreen(),
      toScreen: VespersNoteScreen(),
      // fromRoute: '/photo_7A',
      // toRoute: '/vespers_note',
      photoLink: kReleaseMode
          ? 'assets/images/photos/F8A.png'
          : 'images/photos/F8A.png',
      annotation:
          "\n\n\n\nодни мы над миром владыки, нам зверь подчиняется дикий и травы зелёных полей",
      description:
          "Эта фотография смазанная и нечёткая. Никак нельзя понять, что на ней запечатлено.",
      crossed: true,
    );
  }
}

class Photo1BScreen extends StatelessWidget {
  const Photo1BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: VespersNoteScreen(),
      toScreen: Photo2BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F1.png' : 'images/photos/F1.png',
      annotation:
          "Единственный человек на фото, чьё лицо можно разглядеть, — это Николай Канаков, который не смог участвовать из-за болезни. Остальные — невернувшиеся участники экспедиции.\n\nТак же эффект зиккурата.",
      description:
          "Та же фотография восьмерых участников экспедиции на кафедре исторического факультета МГУ. У семерых из восьми лица смазаны, словно из-за дефекта плёнки.\n\nНа фоне — кульман, на котором расчерчен зловещий зиккурат.",
    );
  }
}

class Photo2BScreen extends StatelessWidget {
  const Photo2BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo1BScreen(),
      toScreen: Photo3BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F2.png' : 'images/photos/F2.png',
      annotation:
          "Переданные Наркоматом Обороны машины были, в целом, исправны. Но будучи техникой Санитарного Управления, несли на себе явственную печать страданий и смерти.\n\nКто-то из участников, бывших фронтовиков, спорил, что эту технику нельзя использовать в таком сложном деле – плохая примета.\n\nСергей Иванович Квач, будучи учёным, не верил в приметы и отмахнулся от суеверий коллег.",
      description:
          "Фотография гаража: на переднем плане — «Студебеккер», перед подготовкой к пустынному пробегу. Видно, что машина в своём недавнем прошлом — фронтовая. В стенках кунга — ряды круглых отверстий, кабина изнутри запятнана багровым, фары разбиты. В полумраке на заднем плане — остальная техника в схожем состоянии.",
    );
  }
}

class Photo3BScreen extends StatelessWidget {
  const Photo3BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo2BScreen(),
      toScreen: Photo4BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F3.png' : 'images/photos/F3.png',
      annotation:
          "Пленные гитлеровцы были все сплошь краснолицыми от длительного обращения с креозотом под астраханским солнцем. С сопутствующей светобоязнью боролись, как наши северные народности со снежной слепотой – мастерили очки-пластинки с узкой прорезью для глаз.",
      description:
          "Фотография железнодорожного состава и путей перед ним: на платформах закреплены и полускрыты под брезентом «Студебеккеры» и трофейные «Цундаппы».\n\nУчасток путей перед локомотивом неисправен — снимок застал группу пленных в изношенных немецких шинелях за укладкой новых шпал, пропитанных чёрным креозотом.",
    );
  }
}

class Photo4BScreen extends StatelessWidget {
  const Photo4BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo3BScreen(),
      toScreen: Photo5BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F4.png' : 'images/photos/F4.png',
      annotation:
          "Древний город, одна из ключевых остановок на Шёлковом пути, столица империи Тамерлана, культурный и научный центр. А что теперь? Пыль да разруха.",
      description:
          "Фотография «Цундаппа» на фоне средневековых минаретов и большого портала, кое-где покрытого характерным орнаментом. Местность безлюдная и заброшенная. Керамическое покрытие сооружений давно осыпалось, их стены постепенно разрушаются и покрываются пятнами. В углу подпись чернилами: «Самарканд».",
      label: "Самарканд",
    );
  }
}

class Photo5BScreen extends StatelessWidget {
  const Photo5BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final String svgMark =
        '''<svg width="365" height="79" viewBox="0 0 365 79" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1.99988 1C1.99988 26.5 -1.00012 33.5 111.5 28.5C153 25 152 50.5 164.5 78.5C158 14 142.5 28.5 347 28.5C362.6 28.5 364.167 10.1667 363 1" stroke="#575C91" stroke-width="2"/></svg>''';
    return PhotoScreen(
      fromScreen: Photo4BScreen(),
      toScreen: Photo6BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F5.png' : 'images/photos/F5.png',
      annotation:
          "По прибытии в Кашгар группа планировала задержаться на несколько дней, чтобы отдохнуть, восстановить технику и найти проводников. Однако, население уже знало о прибытии русских и было настроено крайне враждебно. В стычке с местными был ранен Иван Ламарёв.\n\nОтряду пришлось спешно выходить в пустыню без отдыха и проводников.",
      description:
          "Фотография сгрудившихся участников экспедиции вокруг одного из своих. Чуть правее начальник группы направляет длинный «ТТ» на двух местных, невысоких, в халатах и тюбетейках, сжимающих ножи и ощерившихся. На фоне выстроились в ряд разномастные глинобитные домики. В углу теми же чернилами и тем же почерком: «Кашгар».",
      label: "Кашгар",
      svgString: svgMark,
      svgDim: [9, 115, 45, 10],
      penText: "каким образом?",
    );
  }
}

class Photo6BScreen extends StatelessWidget {
  const Photo6BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo5BScreen(),
      toScreen: Photo7BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F6.png' : 'images/photos/F6.png',
      annotation:
          "К этому времени коллектив разделился на две группы: Воробьёв, Артюшенков и Ламарёв продолжали подчиняться профессору Квачу, а Велугин, Горшков, Лашков и Остроумов, под предводительством последнего, начали оспаривать авторитет руководителя экспедиции. Шли разговоры об отделении, захвате части техники и возвращении в Кашгар. Лишь сложности с ориентированием (читать звёзды умел только фронтовик Артюшенков) останавливали бунтовщиков от осуществления задуманного.\n\nОтряд шёл к намеченной цели.",
      description:
          "Аналогичное ночное фото «Студебеккера» на фоне засвеченной вспышкой пустыни. Трое участников, освещённые фарами, копают перед грузовиком песок. В темноте кабины — две светящиеся точки глаз.",
    );
  }
}

class Photo7BScreen extends StatelessWidget {
  const Photo7BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo6BScreen(),
      toScreen: Photo8BScreen(),
      photoLink:
          kReleaseMode ? 'assets/images/photos/F7.png' : 'images/photos/F7.png',
      annotation:
          "если на фотографии только зиккурат, где люди и техника? кто снимает? воробьёв? один? гдгд? квч!",
      description:
          "На переднем плане фотографии никого нет, ни техники, ни людей. Только у горизонта, над плоской пустыней возвышается чёрный зиккурат.\n\nСтупенчатая пирамида с чёткими линиями ярусов, огромными лестницами и плоской, словно срезанной, вершиной. Даже здесь, в тысячах и тысячах километрах от угольно-чёрного монумента, чувствуется исходящая от него угроза. Но и гипнотическая притягательность.",
      svgDim: [40, 117, 45, 10],
      penText: "здесь клиент поплыл !!!",
    );
  }
}

class Photo8BScreen extends StatelessWidget {
  const Photo8BScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PhotoScreen(
      fromScreen: Photo7BScreen(),
      toScreen: ConclusionScreen(),
      photoLink: kReleaseMode
          ? 'assets/images/photos/F8B.png'
          : 'images/photos/F8B.png',
      annotation:
          "Фахфф ахф’ мгеп мгмгехйенах бтнк от йар ахор ах л’ мгептаранк сиха’х ах’мглв’нафх! Сиха’х ах’мглв’нафх!",
      description:
          "Фотография сделана в замкнутом помещении с чёрными стенами, полом и потолком. Все восемь участников экспедиции стоят перед объективом. Совершенно голые, с залитыми кровью плечами, они держат собственные головы в вытянутых вперёд руках. Глаза распахнуты в ужасе, рты перекошены в безмолвном крике.",
    );
  }
}
