enum l10n {
  rus,
  eng,
}

const Map<l10n, String> testTxt = {
  l10n.rus:
      "абвгдеёжзийклмнопрстуфхцчшщъыьэюяабвгдеёжзийклмнопрстуфхцчшщъыьэюяабвгдеёжзийклмнопрстуфхц\n\nабвгдеёжзийклмнопрстуфхцчшщъыьэюяабвгдеёжзийклмнопрстуфхцчшщъыьэюя\n\nабвгдеёжзийклмнопрстуфхцчшщъыьэюяабвгдеёжзийк",
};

const Map<l10n, String> coverTxt = {
  l10n.rus:
      "Совершенно секретно\n\nКГБ СССР\nУправление Т\n\nМатериалы дела № «416-Д»\n«Экспедиция в Такла-Макан»\n\nАрхивный № О-6-9212",
  l10n.eng:
      "Top Secret\n\nKGB of USSR\nOffice T\n\nMaterials of the case # “416-D”\n“Expedition in Taklamakan”\n\nArchive Number O-6-9212",
};

const Map<l10n, String> martyrTxt = {
  l10n.rus:
      "ВНИМАНИЕ\n\nДЛЯ РАБОТЫ С МАТЕРИАЛАМИ НЕОБХОДИМ ДОПУСК НЕ НИЖЕ КЛАССА МАРТИР\n\nПЕРЕД ПРОЧТЕНИЕМ ПОДГОТОВИТЬ ФОРМУЛЯР 09–В–2",
  l10n.eng:
      "WARNING\n\nTO WORK WITH THE MATERIALS AT LEAST A MARTYR LEVEL ACCESS IS REQUIRED\n\nPREPARE FORM 09-B-2 BEFORE CONTINUING",
};

const Map<l10n, String> noteTxt = {
  l10n.rus:
      "Справка\n\nМатериалы, приведённые в данном фотоальбоме, являются приложением к ныне утерянному каталогу свидетельств под общим названием «Экспедиция в Такла‑Макан». Обстоятельства утраты полного каталога зафиксированы в отчёте Управления «Т» председателю Правительства РФ Ч.В.С. от 26.08.94 и хранятся в архиве Управления в составе тома «Инцидент О-6».\n\nВ состав сохранившегося альбома входят карта и две группы из шестнадцати чёрно-белых фотографий. Фотографии можно сопоставить в восемь пар, характер каждой из которых позволяет утверждать, что напечатаны они с одних и тех же негативов, однако, наглядные отличия говорят о влиянии дополнительных, неустановленных факторов. Фотографии аннотированы в промежутке между 1949-м и 1951-м годами одним из участников экспедиции [маловероятно], либо кем-то ещё, так или иначе вовлечённым в процесс.\n\nНа следующей странице приведён комментарий профессора кафедры археологии исторического факультета МГУ Ягоды М.А. Профессор Ягода, будучи внештатным экспертом Управления «Т» с соответствующим допуском, участвовал в процессе восстановления информации об утраченных свидетельствах, отнесённых к группе «Криптоархеология».\n\n[для информации: том „Инцидент О–6“ был перемещён из архива Управления в главный архив ФСБ (не ранее 2003 года)]",
  l10n.eng:
      "Synopsis\n\nThe materials given in this photo-album are an appendix to the now lost catalogue of evidences called “Expedition to Taklamakan”. Circumstances of the catalogue loss registered in the Office “T” report given to the Prime Minister of Russian Federation Ch.V.S on 26 Aug 1994. The report is archived within “Incident O-6” volume.\n\nThe preserved album includes a map and two sets of sixteen black-and-white photos. The photographs can be grouped in eight pairs, each pair is definitely printed off the same negative. But the apparent differences within each pair suggest the influence of additional, unidentified factors.\n\nThe photos were annotated between 1949 and 1951 by one of the expedition members [unlikely] or by someone else involved in the process.\n\nOn the next page a commentary of Professor M.A. Yagoda is given. M.A. Yagoda is a professor of the Department of Archeology, Faculty of History of Moscow State University. As a freelance expert with appropriate clearance he participated in the restoring of evidences classified as “Cryptoarcheology”.\n\n[for info: the volume “Incident O-6” was moved from the Office “T” Archive to the main FSB archive (not until 2003)]."
};

const Map<l10n, String> yagodaTxt = {
  l10n.rus:
      "Когда большая и страшная война закончилась, победители – к немалому своему удивлению – обнаружили у себя на руках множество загадочных и малообъяснимых свидетельств, обретённых Третьим Рейхом за время недолгой активности оккультного общества «Аненербе». Свидетельства эти касались множества различных сфер, от биологии до астрономии, но самыми обильными были, конечно, археологические находки.\n\nОднако, страна немыслимым напряжением сил восстанавливала разрушенное войной и народному хозяйству было не до археологии. Тем не менее, наркомат просвещения посчитал некоторые из материалов настолько серьёзными, что организовал полноценную экспедицию из профессорского и студенческого состава исторического факультета МГУ в далёкий и глухой уголок Китая – в пустыню Такла‑Макан.\n\nНаличествующих данных недостаточно, чтобы понять, что же послужило толчком для кабинетных начальников пойти на такие расходы и каковы же были результаты мероприятия. Однако, документов «Приложения Ф» хватает, чтобы присвоить утраченному каталогу «Экспедиция в Такла‑Макан» класс опасности МАРТИР и принять соответствующие меры по нераспространению информации о нём.\n\nЯгода М.А.\n11 декабря 1999 года.",
  l10n.eng:
      "When the great and horrible war ended, the victors—to their own surprise—found themselves in possession of a great deal of mysterious and inexplicable evidences acquired by the Third Reich during the short-lived activity of the occult society Ahnenerbe. Those evidences covered a variety of different fields, from biology to astronomy, but the most abundant were, of course, archaeological finds.\n\nHowever, the country with the incredible effort was restoring what was destroyed by the war and the national economy was not up to archaeology. Nevertheless, the People’s Commissariat of Education considered some of the material so important that it organized a full expedition of professors and students of the Historical Faculty of Moscow State University to a remote and uninhabited corner of China—the Taklamakan Desert.\n\nThe available data is insufficient to understand what prompted the cabinet chiefs to make such expenditures and what the results of the event were. However, the “Appendix F” documents are enough to assign the lost “Expedition to Taklamakan” catalogue a MARTYR class of danger and to take appropriate measures for its non-proliferation.\n\nM.A. Yagoda\n11 December 1999."
};

const Map<l10n, String> appendixTxt = {
  l10n.rus: "ПРИЛОЖЕНИЕ Ф",
  l10n.eng: "APPENDIX F",
};

const Map<l10n, String> mapTxt = {
  l10n.rus:
      "Здесь приведена уменьшенная фотокопия масштабной карты СССР и окружающих его территорий от 1946 года. На карту нанесена красная линия маршрута экспедиции.\n\nМаршрут начинается от Москвы и двойной линией проходит по железнодорожной сети того времени: через Саратов в Ташкент и до Самарканда.\n\nОт Самарканда линия пунктиром ведёт к Коканду и Ошу, далее, зачеркнув перевал Талдык, упирается в Кашгар — в точности по маршрутам средневекового Шёлкового Пути.\n\nОт Кашгара и в самый центр безлюдной пустыни Такла‑Макан линия тонкая и прямая — признак того, что подробных данных о том, как именно продвигалась экспедиция в этих краях, не было.\n\nВ месте, где кончается линия, нарисован красный кружок и чернилами проставлена метка: «КФ937».",
  l10n.eng:
      "A reduced photocopy of the USSR and surrounding areas scale map circa 1946. The red line of the expedition’s route is plotted on the map.\n\nThe route starts from Moscow and runs in a double line along the railroad network of the time: through Saratov to Tashkent and to Samarkand.\n\nFrom Samarkand, the dotted line leads to Kokand and Osh, then, after crossing the Taldyk Pass, it ends in Kashgar, exactly along the routes of the medieval Silk Road.\n\nFrom Kashgar and into the heart of the desert Taklamakan the line is thin and straight—a sign that there were no details on how exactly the expedition moved in these parts.\n\nIn the place where the line ends, a red circle is drawn and a mark is written in ink: “CF937”.",
};

const Map<l10n, String> F1ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография восьмерых участников экспедиции на кафедре исторического факультета МГУ. Все мужчины. Кто-то в костюме и с галстуком, кто-то в гимнастёрке с медалью, кто-то в невзрачной робе и с короткой стрижкой. Почти никого старше тридцати.\n\nСудя по низким сводчатым потолкам, фото сделано в подвальном помещении. Позади участников висит транспарант с лозунгом «Смена смене идёт». Ещё дальше — кульман со схемами и картами, впрочем, качество фотографии не позволяет разглядеть деталей.\n\n\n// Аннотация к фотографии:\n\nСлева направо: А.В. Артюшенков; С.Г. Горшков; Н.Н. Канаков; И.В. Ламарёв; профессор С.И. Квач – начальник экспедиции; Н.А. Лашков; П.Д. Воробьёв – фотограф; П.А. Велугин.\n\nМарт 1946 г.\n\nВскоре после съёмки Николай Канаков выбыл из отряда вследствие болезни. Его заменил Е.Р. Остроумов.",
  l10n.eng:
      "// Photograph Description:\n\nPhoto of the eight expedition members at the Department of History in Moscow State University. All men. Someone in a suit and a tie, someone in a uniform with a medal, someone in an unsightly shirt and a short haircut. Almost no one is older than thirty.\n\nJudging by the low vaulted ceilings, the photo was taken in a basement room. Behind the participants hangs a banner with the slogan “The Shift Change is Coming”. Farther back is a drawing board with charts and maps, but the quality of the photo doesn’t allow to see the details.\n\n\n// Photograph Annotation:\n\nFrom left to right: A.V. Artyushenkov; S.G. Gorshkov; N.N. Kanakov; I.V. Lamarev; Professor S.I. Kvach—chief of the expedition; N.A. Lashkov; P.D. Vorobyov—photographer; P.A. Velugin.\n\nMarch 1946.\n\nShortly after this photograph was taken Nikolay Kanakov left the team due to illness. He was replaced by E.R. Ostroumov.",
};

const Map<l10n, String> F2ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография гаража: на переднем плане — «Студебеккер», подготавливаемый к пустынному пробегу. Жёсткий кунг обтянут светлой тканью, на крышу кабины установлен деревянный щит для защиты от нагрева, в открытом капоте видны большие цилиндры воздушных фильтров, выхлопная труба выведена наверх. По переднему бамперу установлена дополнительная «люстра» противотуманных фар.\n\nВ полумраке на заднем плане видны мотоциклы с колясками, но не в фокусе, поэтому непонятно, какой марки.\n\n\n// Аннотация к фотографии:\n\nНа нужды экспедиции Оргсоветом Наркомпроса были выписаны два грузовика повышенной проходимости и три мотоцикла.\n\nОднако, первоначальные машины были совершенно негодного состояния и С.И. Квач в течение двух месяцев изыскивал технику необходимого качества.\n\nНужные машины в результате были найдены и переданы Санитарным Управлением Наркомата Обороны в ведение университета. Ещё два месяца ушло на подготовку транспорта к условиям длительного перехода.",
  l10n.eng:
      "// Photograph Description:\n\nGarage photo: In the foreground is a Studebaker getting ready for a desert run. The hardtop is wrapped in a light-colored cloth, the roof of the cab is covered with a wooden shield to protect it from heat, the open hood shows large air filter cylinders, and the exhaust pipe is extended upward. An additional “chandelier” of fog lamps is installed along the front bumper.\n\nMotorcycles with sidecars are visible in the twilight background, but not in focus, so it is unclear of what brand.\n\n\n// Photograph Annotation:\n\nThe PCE Organizing Board has provided the expedition with two all-terrain trucks and three motorcycles.\n\nHowever, the initial machines were in a very bad condition and S.I. Kvach had to look for proper equipment during the first two month.\n\nAs a result, the necessary trucks were found and passed to the University by Sanitary Administration of People’s Commissariat of Defense. It took another two months to prepare the vehicles for the conditions of a long transition.",
};

const Map<l10n, String> F3ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография железнодорожного состава: на платформах друг за другом закреплены два «Студебеккера» и три мотоцикла. По характерной раме становится, наконец, понятно, что это за марка: «Цундаппы». Трофейные.\n\n\n// Аннотация к фотографии:\n\nПервая часть маршрута проходила по железным дорогам и была самой простой и безопасной. Возникавшие сложности были связаны, в основном, со скудным уходом за состоянием путей – все силы были брошены на восстановление ж/д-сетей в западных частях страны – и с недавней масштабной реорганизацией Наркомата путей сообщения в Министерство путей сообщения.\n\nВпрочем, все проблемы относительно быстро решались.\n\nФото предположительно снято в октябре 1946-го на участке между Астраханью и Гурьевым.",
  l10n.eng:
      "// Photograph Description:\n\nA photograph of the train: two Studebaker trucks and three motorcycles are mounted on the flatcars. The distinctive frame finally makes it clear what are motorcycles are those: “Zundapps”. Trophies.\n\n\n// Photograph Annotation:\n\nThe first part of the route followed the railroads and was the easiest and safest. The difficulties that arose were mainly due to the meager maintenance of the tracks—all efforts were thrown at restoring the railway networks in the western parts of the country—and to the recent extensive reorganization of the People’s Commissariat of Railways into the Ministry of Railways.\n\nHowever, all problems were solved relatively quickly.\n\nThe photo was supposedly taken in October 1946 on the route between Astrakhan and Guryev.",
};
const Map<l10n, String> F4ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография «Цундаппа» на фоне минаретов и большого портала, покрытого характерным орнаментом. Под порталом толпится большая группа в полосатых халатах и чалмах. Хотя фото и чёрно-белое, можно с уверенностью сказать, что портал облицован керамикой глубокого лазоревого цвета. В углу подпись чернилами: «Самарканд».\n\n\n// Аннотация к фотографии:\n\nСо столицы Туркестана началась «настоящая» экспедиция. Начались и первые проблемы – местное топливо оказалось скверного качества и первоначальный план по постепенному замещению бензина в запасных цистернах пришлось корректировать – качественное топливо из запасов экономили на обратный путь, а передвигаться приходилось на местных розливах. Учащались поломки и беспокоил моторесурс техники, которая ещё даже не столкнулась с испытаниями перевалами и пустыней.",
  l10n.eng:
      "// Photograph Description:\n\nA photo of the “Zundapp” against a background of minarets and a large portal covered with a characteristic ornament. A large group in striped robes and turbans crowds under the portal. Although the photo is in black and white, it is clear that the portal is veneered with ceramics of a deep azure. In the corner is a caption in ink: “Samarkand”.\n\n\n// Photograph Annotation:\n\nThe “real” expedition began with the capital of Turkestan. The first problems ocurred: the local fuel turned out to be of poor quality and the initial plan to gradually replace the gasoline in the reserve tanks had to be corrected: the quality fuel from the reserves was saved for the return trip and the expedition had to use local spills. Breakdowns became more frequent and the engine life of equipment, which had not even faced the test of mountain passes and the desert, was of concern.",
};
const Map<l10n, String> F5ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография сгрудившихся участников экспедиции вокруг открытого капота одного из «Студебеккеров». Чуть правее один из группы (профессор Квач?) общается с двумя местными, невысокими, в халатах и тюбетейках. На фоне выстроились в ряд разномастные глинобитные домики. В углу теми же чернилами и тем же почерком: «Кашгар».\n\n\n// Аннотация к фотографии:\n\nНет никаких фотоматериалов с длительного участка пути между Самаркандом и Кашгаром. Причина, скорее всего, была озвучена профессором Квачем в телеграмме, отправленной из города Ош – последнем пункте с телеграфом. В ней упоминается, что фотограф отряда, Павел Воробьёв, болен, но без подробностей. Кроме того, Квач сетовал, что техника начинает сдавать, а впереди ещё путь через Памир и горные перевалы.\n\nВпрочем, до Кашгара группа добралась и готовилась к походу в пустыню.",
  l10n.eng:
      "// Photograph Description:\n\nA photo of the expedition members huddled around the open hood of one of the Studebaker trucks. To the right, one of the group (Professor Kvach?) is chatting with two locals, short, in robes and skullcaps. In the background are rows of differently-built mud houses. In the corner, in the same ink and handwriting: “Kashgar”.\n\n\n// Photograph Annotation:\n\nThere are no pictures from the long stretch of road between Samarkand and Kashgar. The reason was most likely voiced by Professor Kvach in a telegram sent from Osh, the last point with the telegraph. It mentions that the photographer of the group, Pavel Vorobyov, is ill, but without details. In addition, Kvach lamented that the equipment was beginning to give up and that the road across the Pamirs was still ahead.\n\nNevertheless, the group had reached Kashgar and was getting ready for the trek into the desert.",
};
const Map<l10n, String> F6ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nНочное фото «Студебеккера» на фоне засвеченной вспышкой пустыни. Трое участников в свете фар откапывают перед грузовиком две колеи. Фонтан песка, сорвавшийся с одной из лопат, навсегда застыл в свете вспышки. В темноте кабины — светящаяся точка сигареты.\n\n\n// Аннотация к фотографии:\n\nБольшую часть пути по пустыне отряд проделывал ночью, сберегая технику от работы при высоких температурах. Естественные сложности возникали при ориентировании: скудные картографические данные района, путанные материалы из первоисточников, проблемы с компасами из-за повсеместных магнитных аномалий, необходимость ориентироваться по звёздам. Всё приводило к дополнительным временным затратам.\n\nТак же наметились первые признаки разлада в коллективе.",
  l10n.eng:
      "// Photograph Description:\n\nA night photo of the Studebaker against the backdrop of a flash-lit desert. Three men in the headlights are digging two tracks in front of the truck. The fountain of sand came off one of the shovels is forever frozen in the light of the flash. In the darkness of the cabin is the glowing dot of a cigarette.\n\n\n// Photograph Annotation:\n\nThe group traveled at night mostly, saving the equipment from operating in high temperatures. There were natural difficulties in orienteering: poor cartographic data of the area, confusing materials from primary sources, problems with compasses due to widespread magnetic anomalies, the need to orient by stars. All led to additional time expenditures.\n\nIn addition, the first signs of discord in the team began to emerge.",
};
const Map<l10n, String> F7ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nНа переднем плане фотографии — оба грузовика и мотоциклы. Все члены экспедиции за исключением фотографа стоят спиной к камере. Они смотрят вдаль, туда, где посреди плоской пустыни возвышается огромный чёрный зиккурат.\n\nМногоярусная пирамида с длинной лестницей, ведущей к самой вершине. Все линии геометрически чёткие и точные, не тронутые временем. От одного взгляда на это угольно-чёрное сооружение становится не по себе.\n\n\n// Аннотация к фотографии:\n\nЭффект зиккурата, описанный в материалах немецких археологов, отчётливо проявляется и на данной фотографии: явное чувство тревоги, опасности, исходящей от древнего сооружения. И при этом неуютная притягательность, гипнотическое желание приблизиться.\n\nСкорее всего, участники экспедиции в момент съёмок испытывали похожее чувство, только многажды сильнее.",
  l10n.eng:
      "// Photograph Description:\n\nIn the foreground of the photo are the two trucks and motorcycles. All the expedition members except the photographer are standing with their backs to the camera. They are looking into the distance, to where a huge black Ziggurat rises in the middle of the flat desert.\n\nIt is a tiered pyramid with a long staircase leading to the very top. All lines are geometrically sharp and precise, untouched by time. Just looking at this coal-black structure makes you feel uncomfortable.\n\n\n// Photograph Annotation:\n\nThe effect of the ziggurat, described in the materials of German archaeologists, is clearly evident in this photograph: a clear sense of anxiety, danger emanating from the ancient structure. And at the same time an uncomfortable attraction, hypnotic desire to approach.\n\nMost likely, the participants of the expedition at the time of shooting experienced a similar feeling, only many times stronger.",
};
const Map<l10n, String> F8ATxt = {
  l10n.rus:
      "// Описание фотографии:\n\nЭта фотография смазанная и нечёткая. Никак нельзя понять, что на ней запечатлено.\n\n\n// Аннотация к фотографии:\n\nПеречёркнутый текст стихотворения Марка Тарловского «Огонь»:\n«…одни мы над миром владыки, нам зверь подчиняется дикий и травы зелёных полей…»",
  l10n.eng:
      "// Photograph Description:\n\nThis picture is blurry and indistinct. You can’t make out what’s in it.\n\n\n// Photograph Annotation:\n\nCrossed off excerpt from Mark Tarlovsky’s poem “The Fire”:\n“…we alone are the masters of the world, the wild beast and the grass of green fields obey us…”",
};
const Map<l10n, String> vespersNoteTxt = {
  l10n.rus:
      "Вниманию сотрудников департамента архивации.\n\nСледующая группа фотографий, в основном, повторяет предыдущие. Однако, отличия заметны и — на данном этапе развития инструментария — необъяснимы.\n\nПеред продолжением подготовить «Формуляр 09-В-2».\n\nГермоконтроль\nст. л—т Ю. Д. Веспер\n02.2007",
  l10n.eng:
      "Attention to the staff of the Archives Department.\n\nThe next group of photos is basically the same as the previous ones. However, the differences are noticeable and—at this stage of tool evolution—inexplicable.\n\nPrepare “Form 09-B-2” before proceeding.\n\nHermo-control\nSr Lt Y.D. Vesper\n02.2007",
};
const Map<l10n, String> F1BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nТа же фотография восьмерых участников экспедиции на кафедре исторического факультета МГУ. У семерых из восьми лица смазаны, словно из-за дефекта плёнки.\n\nНа фоне — кульман, на котором расчерчен зловещий зиккурат.\n\n\n// Аннотация к фотографии:\n\nЕдинственный человек на фото, чьё лицо можно разглядеть, — это Николай Канаков, который не смог участвовать из-за болезни. Остальные — невернувшиеся участники экспедиции.\n\nТак же эффект зиккурата.",
  l10n.eng:
      "// Photograph Description:\n\nThe same photo of the eight expedition members at the Faculty of History in Moscow State University. Seven of the eight faces are blurred, as if due to a film defect.\n\nIn the background is a drawing board with an ominous Ziggurat on it.\n\n\n// Photograph Annotation:\n\nThe only person in the photo, whose face can be seen, is Nikolai Kanakov, who could not participate due to illness. The rest are the non-returned participants of the expedition.\n\nAlso ziggurat effect.",
};
const Map<l10n, String> F2BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография гаража: на переднем плане — «Студебеккер», перед подготовкой к пустынному пробегу. Видно, что машина в своём недавнем прошлом — фронтовая. В стенках кунга — ряды круглых отверстий, кабина изнутри запятнана багровым, фары разбиты. В полумраке на заднем плане — остальная техника в схожем состоянии.\n\n\n// Аннотация к фотографии:\n\nПереданные Наркоматом Обороны машины были, в целом, исправны. Но будучи техникой Санитарного Управления, несли на себе явственную печать страданий и смерти.\n\nКто-то из участников, бывших фронтовиков, спорил, что эту технику нельзя использовать в таком сложном деле – плохая примета.\n\nСергей Иванович Квач, будучи учёным, не верил в приметы и отмахнулся от суеверий коллег.",
  l10n.eng:
      "// Photograph Description:\n\nGarage photo: in the foreground is a Studebaker, before preparing for a desert run. You can see that the car in its recent past is a battlefront vehicle. There are rows of round holes in the body, the cab is stained red on the inside, the headlights are broken. In the semi-darkness of the background are other vehicles in similar condition.\n\n\n// Photograph Annotation:\n\nThe vehicles passed by the People’s Commissariat of Defense were generally in a working state. But as equipment of the Sanitary Directorate, they bore the distinct stamp of suffering and death.\n\nSome of the members, war veterans, argued that this equipment could not be used in such a challenging case—it was a bad omen.\n\nSergey Ivanovich Kvach, being a scientist, did not believe in omens and brushed aside his colleagues’ superstitions.",
};
const Map<l10n, String> F3BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография железнодорожного состава и путей перед ним: на платформах закреплены и полускрыты под брезентом «Студебеккеры» и трофейные «Цундаппы».\n\nУчасток путей перед локомотивом неисправен — снимок застал группу пленных в изношенных немецких шинелях за укладкой новых шпал, пропитанных чёрным креозотом.\n\n\n// Аннотация к фотографии:\n\nПленные гитлеровцы были все сплошь краснолицыми от длительного обращения с креозотом под астраханским солнцем. С сопутствующей светобоязнью боролись, как наши северные народности со снежной слепотой – мастерили очки-пластинки с узкой прорезью для глаз.",
  l10n.eng:
      "// Photograph Description:\n\nA photo of the train and the tracks in front of it: Studebakers and trophy Zundapps mounted on the flatcars and half-hidden under tarpaulins.\n\nThe section of track in front of the locomotive is out of order—this photo captured a group of prisoners in worn-out German overcoats laying new sleepers soaked in black creosote.\n\n\n// Photograph Annotation:\n\nThe Nazi prisoners were all red-faced from long exposure to creosote under the Astrakhan sun. They fought the accompanying photophobia like our northern peoples fought snow blindness—by making eyepieces with a narrow slit for the eyes.",
};
const Map<l10n, String> F4BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография «Цундаппа» на фоне средневековых минаретов и большого портала, кое-где покрытого характерным орнаментом. Местность безлюдная и заброшенная. Керамическое покрытие сооружений давно осыпалось, их стены постепенно разрушаются и покрываются пятнами. В углу подпись чернилами: «Самарканд».\n\n\n// Аннотация к фотографии:\n\nДревний город, одна из ключевых остановок на Шёлковом пути, столица империи Тамерлана, культурный и научный центр. А что теперь? Пыль да разруха.",
  l10n.eng:
      "// Photograph Description:\n\nThe photo of the “Zundapp” against the background of medieval minarets and a large portal, in some places covered with a characteristic ornament. The area is deserted and desolate. The ceramic covering of the buildings has long since fallen off, and their walls are gradually crumbling and stained. In the corner is a caption in ink: “Samarkand.”\n\n\n// Photograph Annotation:\n\nAn ancient city, one of the key stops on the Silk Road, the capital of Timur’s empire, a cultural and scientific center. What’s it like now? Dust and ruin.",
};
const Map<l10n, String> F5BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография сгрудившихся участников экспедиции вокруг одного из своих. Чуть правее начальник группы направляет длинный «ТТ» на двух местных, невысоких, в халатах и тюбетейках, сжимающих ножи и ощерившихся. На фоне выстроились в ряд разномастные глинобитные домики. В углу теми же чернилами и тем же почерком: «Кашгар».\n\n\n// Аннотация к фотографии:\n\nПо прибытии в Кашгар группа планировала задержаться на несколько дней, чтобы отдохнуть, восстановить технику и найти проводников. Однако, население уже знало о прибытии русских [каким образом?] и было настроено крайне враждебно. В стычке с местными был ранен Иван Ламарёв.\n\nОтряду пришлось спешно выходить в пустыню без отдыха и проводников.",
  l10n.eng:
      "// Photograph Description:\n\nA photo of the expedition members huddled around one of their own. To the right, the group leader is pointing a long “TT-33” at two locals, short, in robes and skullcaps, clutching knives and grinning. In the background are rows of differently-built mud houses. In the corner, in the same ink and handwriting: “Kashgar”.\n\n\n// Photograph Annotation:\n\nUpon arrival in Kashgar the group planned to stay a few days to rest, restore vehicles, and find guides. However, the population was already aware of the Russians’ arrival [how?] and was extremely hostile. Ivan Lamarev was wounded in a skirmish with the locals.\n\nThe group had to rush out into the desert without rest or guides.",
};
const Map<l10n, String> F6BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nАналогичное ночное фото «Студебеккера» на фоне засвеченной вспышкой пустыни. Трое участников, освещённые фарами, копают перед грузовиком песок. В темноте кабины — две светящиеся точки глаз.\n\n\n// Аннотация к фотографии:\n\nК этому времени коллектив разделился на две группы: Воробьёв, Артюшенков и Ламарёв продолжали подчиняться профессору Квачу, а Велугин, Горшков, Лашков и Остроумов, под предводительством последнего, начали оспаривать авторитет руководителя экспедиции. Шли разговоры об отделении, захвате части техники и возвращении в Кашгар. Лишь сложности с ориентированием (читать звёзды умел только фронтовик Артюшенков) останавливали бунтовщиков от осуществления задуманного.\n\nОтряд шёл к намеченной цели.",
  l10n.eng:
      "// Photograph Description:\n\nA similar night photo of the Studebaker against a flash-lit desert backdrop. Three men, illuminated by headlights, are digging sand in front of the truck. In the darkness of the cabin are two glowing dots of eyes.\n\n\n// Photograph Annotation:\n\nBy this time the team had split into two groups: Vorobyov, Artyushenkov and Lamarev continued to subordinate to Professor Kvach, while Velugin, Gorshkov, Lashkov and Ostroumov, led by the latter, began to challenge the authority of the expedition leader. There was talk of separating, capturing some of the vehicles and returning to Kashgar. Only the difficulties with orientation (the veteran Artyushenkov was only one who could read the stars) stopped the mutineers from executing their plans.\n\nThe group was on its way to its goal.",
};
const Map<l10n, String> F7BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nНа переднем плане фотографии никого нет, ни техники, ни людей. Только у горизонта, над плоской пустыней возвышается чёрный зиккурат.\n\nСтупенчатая пирамида с чёткими линиями ярусов, огромными лестницами и плоской, словно срезанной, вершиной. Даже здесь, в тысячах и тысячах километрах от угольно-чёрного монумента, чувствуется исходящая от него угроза. Но и гипнотическая притягательность.\n\n\n// Аннотация к фотографии:\n\nесли на фотографии только зиккурат, где люди и техника? кто снимает? воробьёв? один? гдгд? квч!\n\n[здесь клиент поплыл !!!]",
  l10n.eng:
      "// Photograph Description:\n\nThere is no one in the foreground of the picture, no vehicles, no people. Only on the horizon, a black Ziggurat rises above the flat desert.\n\nA stepped pyramid with clear lines of tiers, huge staircases and a flat, as if cut, top. Even here, thousands and thousands of kilometers away from the coal-black monument, you can feel the threat it poses. But also a hypnotic attraction.\n\n\n// Photograph Annotation:\n\nif the photo only shows the ziggurat, where are the people and vehicles? who is shooting? vorobyov? alone? whwh? kvch!\n\n[here the patient drifted !!!]",
};
const Map<l10n, String> F8BTxt = {
  l10n.rus:
      "// Описание фотографии:\n\nФотография сделана в замкнутом помещении с чёрными стенами, полом и потолком. Все восемь участников экспедиции стоят перед объективом. Совершенно голые, с залитыми кровью плечами, они держат собственные головы в вытянутых вперёд руках. Глаза распахнуты в ужасе, рты перекошены в безмолвном крике.\n\n\n// Аннотация к фотографии:\n\nФахфф ахф’ мгеп мгмгехйенах бтнк от йар ахор ах л’ мгептаранк сиха’х ах’мглв’нафх! Сиха’х ах’мглв’нафх!",
  l10n.eng:
      "// Photograph Description:\n\nThe photo was taken in an enclosed chamber with black walls, floor, and ceiling. All eight members of the expedition stand in front of the camera. Completely naked, their shoulders covered in blood, they hold their own heads in outstretched hands. Their eyes are open in horror, their mouths twisted in silent screams.\n\n\n// Photograph Annotation:\n\nFahff ahf’ mgep mgmgehyenah btnk ot yar ahor ah l’ mgeptharnak siha’h ah’mglw’nafh! Siha’h ah’mglw’nafh!",
};
const Map<l10n, String> conclusionTxt = {
  l10n.rus:
      "Заключение по результатам гермоконтроля\n\nКрайняя фотография и аннотация к ней свидетельствуют о значительном влиянии «поля КФ», тензодатчики Энджелла регистрируют напряжение на уровне 108,6 МПа. Работа с документом возможна только при наличии барьеров уровня не ниже мартировского.\n\nОчевидно, техники подобного уровня не существовало на момент написания аннотаций (конец сороковых — начало пятидесятых). Как следствие, личность человека, аннотировавшего фотографии, наверняка, понесла необратимый урон.\n\nДо сих пор не удалось со стопроцентной достоверностью определить автора аннотаций.\n\nОднако, большая часть данных указывает на то, что им был Канаков Николай Наумович — тот самый член отряда, который выбыл из экспедиции ещё до её начала.\n\nКанаков Н.Н. умер в 1959 году в Московской психиатрической больнице №3. Кремирован на Новом Донском кладбище.\n\nКласс опасности материалов подтверждаю.\nУсловия хранения оставить без изменений.\nСледующий контроль не позднее 2015 года.\n\nГермоконтроллер ст. л—т Ю. Д. Веспер\n15 марта 2007 года.\n\nVesper",
  l10n.eng:
      "Conclusion on the results of the hermo-control inspection\n\nThe last photo and its annotation show a significant influence of the “CF field”, Angell’s strain gauges register the stress at 108.6 MPa. Working with the document is possible only if the barriers are not lower than the Martyr level.\n\nObviously, technology of this level did not exist at the time of writing the annotations (late forties—early fifties). As a consequence, the identity of the person who annotated the photographs must have suffered irreversible damage.\n\nSo far it has not been possible to identify the author of the annotations with absolute certainty. However, most of the data indicates that it was Nikolai Naumovich Kanakov, the very member of the team, who left the expedition before it began.\n\nN.N. Kanakov died in 1959 in the Moscow psychiatric hospital No. 3. He was cremated at the Novy Donskoi Cemetery.\n\nHazard class of materials confirmed.\nStorage conditions remain unchanged.\nNext inspection no later than 2015.\n\nHermetic Control Officer Sr. Lt. Y.D. Vesper.\nMarch 15, 2007.",
};
const Map<l10n, String> backCoverTxt = {
  l10n.rus:
      "Всего прошито, пронумеровано и скреплено печатью:\n23 (двадцать три) листа(а/ов)\n\nДолжность: гермоконтроллер\n\nПодпись: Vesper\n\n16 марта 2007 г.",
  l10n.eng:
      "In total, this is stitched, numbered, and sealed:\n23 (twenty-three) sheets(s)\n\nPosition: hermetic control officer\n\nSigned: Vesper\n\nMarch 16, 2007.",
};