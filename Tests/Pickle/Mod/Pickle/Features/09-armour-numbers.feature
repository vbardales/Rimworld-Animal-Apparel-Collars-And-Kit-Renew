Feature: Animal Apparel Collars and Kit Renew, armour that counts

  # Scenario J: the numbers on the tab mean something when a hit lands. Two identical huskies, one in power armour,
  # take the same repeated cut; the armoured one must take less on average. The armour is computed with the game's own
  # ArmorUtility.GetPostArmorDamage, so this is not a tooltip check. It is not a real fight (that needs combat steps).

  Scenario: Animal Apparel Collars: an armoured animal takes less damage than a bare one
    Given the save "test-colony" is loaded
    And Animal Apparel Collars: a tame "Husky" named "Armoured" exists at (60, 60)
    And Animal Apparel Collars: a tame "Husky" named "Bare" exists at (62, 60)
    When Animal Apparel Collars: "Armoured" is dressed in "Apparel_SmallAnimalPowerArmor"
    Then Animal Apparel Collars: "Armoured" takes less damage than "Bare" over 200 cuts of 20 damage
    And no errors were logged
