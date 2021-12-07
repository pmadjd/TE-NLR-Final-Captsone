BEGIN TRANSACTION;
DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS seq_user_id;
CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	new_user boolean DEFAULT true,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);
DROP TABLE IF EXISTS pets;
CREATE TABLE pets (
        pet_id SERIAL,
        pet_name varchar(32) NOT NULL,
        pet_type varchar(24) NOT NULL,
        pet_gender varchar(1) NOT NULL,
        pet_breed varchar(24),
        pet_birthdate DATE,
        pet_description varchar(300),
        pet_photo varchar(64),
        CONSTRAINT PK_pet_id PRIMARY KEY (pet_id)
        );
INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO pets (pet_id, pet_name, pet_type, pet_gender, pet_breed, pet_birthdate, pet_description, pet_photo)
VALUES
(DEFAULT, 'Greystone', 'Cat', 'M', 'Domestic Shorthair', '2021-08-18', 'Greystone and his four siblings were left in a box outside an office building. But they made it to us and oh how their lives have changed! Greystone loves to eat, loves to wrestle, loves treats, loves toys.', ''),
(DEFAULT, 'Fawn', 'Cat', 'F', 'Domestic Shorthair', '2021-04-25', 'Fawn and her sister Freddie were found as strays when they were just 3 weeks old, and they have become the sweetest kittens! Fawn is a very sweet, cuddly baby who loves to be held; she starts purring up a storm to show you how happy she is!', ''),
(DEFAULT, 'Cookie', 'Cat', 'M', 'Domestic Shorthair', '2021-06-05', 'Give your paws up for Cookie, the sassiest little kitten you will ever meet! Cookie is a male kitten with a very strong personality! Cookie will not hold back his opinions (very vocal) and likes to show off!', ''),
(DEFAULT, 'Moe', 'Cat', 'M', 'Domestic Shorthair', '2020-01-25', 'This big tabby boy with the striking yellow eyes is one big softie! He is a big fan of his human caretakers, and often will rub up against their legs and follow them around the suite. He is a very social guy, but a laid-back sort, as well.', ''),
(DEFAULT, 'Freddie', 'Cat', 'F', 'Domestic Shorthair', '2021-04-25', 'Freddie and her sister were stray kittens when we rescued them at a mere 3 weeks old! Now they are ready to be adopted and find a human companion that will give them an immense amount of love. Freddie is a very energetic, playful kitten but she also loves to be held and cuddled', ''),
(DEFAULT, 'Joey', 'Cat', 'M', 'Domestic Shorthair', '2021-06-15', 'Joey is my name! My brother Chandler and I were found in a rural road early one morning. We saw the human with the sweet smile and RAN to her, meowing for help! She picked us up and we cuddled her in one big group hug to make sure she knew how awesome we are.', ''),
(DEFAULT, 'Leah', 'Cat', 'F', 'Domestic Shorthair', '2017-05-19', 'Leah is a calm, elegant, and loving little lady. She loves to lounge in beds, on cat trees, and in laps. She will crawl into your lap when you sit down and purr happily as you pet her. She would love nothing more than to lounge around with a loving human all day!', ''),
(DEFAULT, 'Bonita', 'Cat', 'F', 'Domestic Shorthair','2014-02-21', 'Bonita is a sweet, vocal lady seeking a comfy spot to chill in. She is used to being the queen of whatever space she is in, and she would greatly enjoy a calm home away from all the crazy kitten energy and with plenty of spaces to rest. This beautiful gray and white girl likes attention.', ''),
(DEFAULT, 'Trick', 'Cat', 'F', 'Domestic Shorthair', '2021-08-28', 'My foster mommy says I was the first kitten in the litter to purr and as of today, I was the first in the litter to lay in her lap. I''m trusting, outgoing and very lovable.', ''),
(DEFAULT, 'Treat', 'Cat', 'F', 'Domestic Shorthair','2021-08-28', 'My foster mommy thinks I am adorable because I go into a state of nirvana when she gives me belly rubs. When she is on the floor with us, I do all I can to get her attention for more belly rubs!', ''),
(DEFAULT, 'Elliot', 'Dog', 'M', 'Cattle Dog', '2017-08-16', 'Elliot is a beautiful, playful boy that loves people (including kids!) and does well with other dogs. Elliot came to us from a backyard breeding situation, but he''s put that behind him and looks forward to finding his furever home.', ''),
(DEFAULT, 'Rex', 'Dog', 'M', 'Chihuahua-Mix', '2019-05-20', 'Rex came to us from a hoarding case, and as a result is very fearful. The good news, however, is that Rex absolutely loves peanut butter... so an adopter who has some patience and unlimited peanut butter is likely to win Rex over!', ''),
(DEFAULT, 'Autumn', 'Dog', 'F', 'Mixed Breed', '2019-03-31', 'Autumn is a beautiful young lady that loves to gallop around the yard and go for walks, followed by snuggles on the couch. She is a medium energy dog that is housebroken and would be happy in an apartment or a house, as long as there''s someone to give her lots of love.', ''),
(DEFAULT, 'Nash', 'Dog', 'M', 'Husky-Mix', '2017-04-28', 'We are proud to be representing Nash in his search for a forever home. He has proven to be okay with cats and good with kids. He is, however, not particularly fond of other dogs so he needs to be the only dog in his new home.', ''),
(DEFAULT, 'Waldo', 'Dog', 'M', 'Retriever-Lab Mix', '2020-02-22', 'Waldo is a very charming, sweet dog with soulful eyes. He loves people and gets along with other dogs. For a young dog, he is very laid back. He loves to play fetch, but he''s also happy just lounging in the sunshine with a toy.', ''),
(DEFAULT, 'Layla', 'Dog', 'F', 'Mixed Breed', '2016-10-20', 'We rescued sweet Layla from a hoarding case, and soon after, we discovered that she was pregnant! She recently gave birth to her six gorgeous puppies in foster care and now she needs a loving home of her own. She is very mild mannered, quiet and well behaved.', ''),
(DEFAULT, 'Beebee', 'Dog', 'F', 'Retriever-Lab Mix', '2019-09-28', 'BeeBee is a sweet and intelligent dog recently returned to us due to no fault of her own. BeeBee would love a new family that can get her outdoors on regular basis so she can fully embrace being a dog and go on adventures!', ''),
(DEFAULT, 'Wylie', 'Dog', 'M', 'Hound-Mix', '2015-06-16', 'Wylie has come back to Furkids because his previous adopters had a change in living conditions that were not in Wylie''s best interest. They loved Wylie and tried everything they could to ensure that he would do well in his new accommodations, but Wylie needed more space.', ''),
(DEFAULT, 'Alphonzo', 'Dog', 'M', 'Bulldog-Mix', '2014-02-13', 'Alfonzo P is a character who definitely has his own opinions about things! He enjoys being out in the play yard at Furkids and he also enjoys nap time. He is one of the lucky homeless dogs that were transported by a rescue group in Puerto Rico to us so that they could find forever homes.', ''),
(DEFAULT, 'London', 'Dog', 'F', 'Mixed Breed', '2015-05-28', 'London came to Furkids severely malnourished with a litter of puppies. Her puppies are grown and adopted, and now London is healthy and ready for her own forever home. She is incredibly sweet and loves people of all ages, including kids!', '');
COMMIT TRANSACTION;