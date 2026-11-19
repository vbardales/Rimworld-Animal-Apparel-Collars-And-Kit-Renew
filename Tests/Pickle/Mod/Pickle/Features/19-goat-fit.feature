@animal-apparel-collars @review @requires:nelim.sanctuarybacklot @requires:nelim.pickletools.screenshotmode @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.colonistrace
# Diagnostic, 2026-11-18 (goat mail sprite sits too high on the vanilla goat, found on gallery 4 and 6): two bare goats and two goats in
# the undyed Apparel_GoatMail side by side in the same frame, seen from the side (West), the front (South) and the back (North), to
# measure the offset between the mail sprite and the vanilla goat body and to see whether male and female goats differ. Pass wsl-deps.sanctuary.map.
# Not a test of the mod, a measuring capture: delete the run once the offset is read. Genders are random at spawn.
Feature: Animal Apparel Collars and Kit Renew, goat mail fit measure

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: Animal Apparel Collars: goat mail fit, goats facing West
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Animal Apparel Collars: a tame "Goat" named "BareGoatA" stands at (192, 152)
    And Animal Apparel Collars: a tame "Goat" named "BareGoatB" stands at (194, 152)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatA" stands at (192, 154)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatB" stands at (194, 154)
    And Nelim's Pickle Tools: the animal "BareGoatA" stands at (192, 152) facing West
    And Nelim's Pickle Tools: the animal "BareGoatB" stands at (194, 152) facing West
    And Nelim's Pickle Tools: the animal "MailGoatA" stands at (192, 154) facing West
    And Nelim's Pickle Tools: the animal "MailGoatB" stands at (194, 154) facing West
    And Animal Apparel Collars: "MailGoatA" is dressed in "Apparel_GoatMail"
    And Animal Apparel Collars: "MailGoatB" is dressed in "Apparel_GoatMail"
    Then Animal Apparel Collars: the render tree of "MailGoatA" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: I let 30 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I frame the cell (193, 153) at zoom 2.2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "goat-fit-west"
    And Nelim's Pickle Tools: the interface is shown again

  Scenario: Animal Apparel Collars: goat mail fit, goats facing South
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Animal Apparel Collars: a tame "Goat" named "BareGoatA" stands at (192, 152)
    And Animal Apparel Collars: a tame "Goat" named "BareGoatB" stands at (194, 152)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatA" stands at (192, 154)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatB" stands at (194, 154)
    And Nelim's Pickle Tools: the animal "BareGoatA" stands at (192, 152) facing South
    And Nelim's Pickle Tools: the animal "BareGoatB" stands at (194, 152) facing South
    And Nelim's Pickle Tools: the animal "MailGoatA" stands at (192, 154) facing South
    And Nelim's Pickle Tools: the animal "MailGoatB" stands at (194, 154) facing South
    And Animal Apparel Collars: "MailGoatA" is dressed in "Apparel_GoatMail"
    And Animal Apparel Collars: "MailGoatB" is dressed in "Apparel_GoatMail"
    Then Animal Apparel Collars: the render tree of "MailGoatA" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: I let 30 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I frame the cell (193, 153) at zoom 2.2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "goat-fit-south"
    And Nelim's Pickle Tools: the interface is shown again

  Scenario: Animal Apparel Collars: goat mail fit, goats facing North
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 685 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Animal Apparel Collars: a tame "Goat" named "BareGoatA" stands at (192, 152)
    And Animal Apparel Collars: a tame "Goat" named "BareGoatB" stands at (194, 152)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatA" stands at (192, 154)
    And Animal Apparel Collars: a tame "Goat" named "MailGoatB" stands at (194, 154)
    And Nelim's Pickle Tools: the animal "BareGoatA" stands at (192, 152) facing North
    And Nelim's Pickle Tools: the animal "BareGoatB" stands at (194, 152) facing North
    And Nelim's Pickle Tools: the animal "MailGoatA" stands at (192, 154) facing North
    And Nelim's Pickle Tools: the animal "MailGoatB" stands at (194, 154) facing North
    And Animal Apparel Collars: "MailGoatA" is dressed in "Apparel_GoatMail"
    And Animal Apparel Collars: "MailGoatB" is dressed in "Apparel_GoatMail"
    Then Animal Apparel Collars: the render tree of "MailGoatA" draws "Apparel_GoatMail"
    When Nelim's Pickle Tools: I let 30 ticks pass
    And Nelim's Pickle Tools: time is paused for the capture
    And Nelim's Pickle Tools: I frame the cell (193, 153) at zoom 2.2
    And Nelim's Pickle Tools: the map is shown alone for a capture
    And I take a screenshot "goat-fit-north"
    And Nelim's Pickle Tools: the interface is shown again
