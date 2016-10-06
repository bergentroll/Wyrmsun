--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2016 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineDialogue("freys-messenger-skirnir-sent-to-nidavellir", { -- based on the myth of the binding of Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 35.
	Nodes = {
		{
			"speaker", "character", "Frey",
			"text", "I have just spoken with the Allfather, Odin. Or as your people call him, Wodanaz. The monster Fenrir troubles him. We cannot kill the beast here, as it would stain Asgard's sacred soil with the corrupted blood that runs through its veins. Therefore we need to chain Fenrir. Twice have we crafted fetters to do so, and twice it has broken its chains. Our last recourse is to ask the dwarves of Nidavellir to craft a fetter for us, as their metalworking knows no parallel."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "Even amongst the Aesir and the Vanir?"
		},
		{
			"speaker", "character", "Frey",
			"text", "Indeed. The Aesir are warrior gods, while we, the Vanir, are deities of fertility and magic. For all our power, I am afraid these mortal dwarves are better craftsmen than we are. I am sending you to their world to request the dwarves known as the Brisings to create the fetter for us. As you know, as deities we cannot enter material worlds. This task must fall to you, a gifted mortal, a planewalker."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "Yes, master.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "freys-messenger-contact-the-brisings")
				end
			}
		}
	}
})

DefineDialogue("freys-messenger-skirnir-contacts-the-brisings", { -- based on the myth of the binding of Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 35.
	Nodes = {
		{
			"speaker", "character", "Skirnir",
			"text", "Greetings, noble dwarves. I am Skirnir, and I was sent to you by my master, a Vanir god. My people call him Fraujaz, though others know him as Frey."
		},
		{
			"speaker", "character", "Nar",
			"text", "Welcome, Skirnir the giant-gnome, it is a blessing to speak with a servant of Frey. Our priests have foretold your coming. What is it that the gods desire from us?"
		},
		{
			"speaker", "character", "Skirnir",
			"text", "The beast Fenrir imperils Asgard, but cannot be slain lest its evil blood taint the land. It must be bound with a fetter - but so far none have been strong enough to contain it. My master believes your clansfolk sufficiently skilled to craft the masterful chain which the gods require."
		},
		{
			"speaker", "character", "Nar",
			"text", "Very well. We are fit for the job, you will find no better smiths than us. But there's the matter of, you see, the reward..."
		},
		{
			"speaker", "character", "Skirnir",
			"text", "A fair question. The gods have allowed me to offer you 10,000 gold pieces - given from the coffers of their priesthoods throughout this world."
		},
		{
			"speaker", "character", "Nar",
			"text", "In that case - we agree. Nain! Niping! Call the others, we have some work to do!",
			"option-effects", {
				function(s)
				end
			}
		}
	}
})
