enum DanceCategory { st, la }

enum DanceStyle {
  waltzv('Walc wiedeński', DanceCategory.st),
  waltze('Walc angielski', DanceCategory.st),
  tango('Tango', DanceCategory.st),
  quickstep('Quickstep', DanceCategory.st),
  foxtrot('Foxtrot', DanceCategory.st),

  chaCha("Cha-cha", DanceCategory.la),
  samba("Samba", DanceCategory.la),
  jive("Jive", DanceCategory.la),
  rumba('Rumba', DanceCategory.la),
  pasoDoble('Paso doble', DanceCategory.la);

  const DanceStyle(this.displayName, this.danceCategory);

  final String displayName;
  final DanceCategory danceCategory;
}
