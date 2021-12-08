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
	first_name varchar,
	last_name varchar,
	email varchar,
	phone text,
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
        arrival_date DATE DEFAULT CURRENT_DATE,
        pet_description varchar(300),
        pet_photo varchar,
        is_adopted boolean DEFAULT FALSE,
        
        CONSTRAINT PK_pet_id PRIMARY KEY (pet_id)
        
        );

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role, first_name, last_name, email, phone) VALUES ('Bob','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Bob', 'Jones', 'bob@bob.com', '1234567890');

INSERT INTO pets (pet_id, pet_name, pet_type, pet_gender, pet_breed, pet_birthdate, arrival_date, pet_description, pet_photo)
VALUES 
(DEFAULT, 'Greystone', 'Cat', 'M', 'Domestic Shorthair', '2021-08-18', '2021-09-18', 'Greystone and his four siblings were left in a box outside an office building. But they made it to us and oh how their lives have changed! Greystone loves to eat, loves to wrestle, loves treats, loves toys.', 'https://lh3.googleusercontent.com/pw/AM-JKLXlvnBAOKI_utSMjxfUfH9tYRahm3aR-sKTzMq7BLm-wxa3-wcOctIRP-ihKEzvjnHS6sVnxLYYDyFLdjnqIED2330pv1DGd29r9vrr3F7-McyItT6PbCpNigh6N2daYaj2Vxfz7QoAnjkuV80y1pw=s919-no?authuser=0'),
(DEFAULT, 'Fawn', 'Cat', 'F', 'Domestic Shorthair', '2021-04-25', '2021-05-25', 'Fawn and her sister Freddie were found as strays when they were just 3 weeks old, and they have become the sweetest kittens! Fawn is a very sweet, cuddly baby who loves to be held; she starts purring up a storm to show you how happy she is!', 'https://lh3.googleusercontent.com/pw/AM-JKLWK0VIM-Xd4l7TfYA9sXAC4AvSszViePFg6wAPJNl-cxU5WmN4ULwVrnYqmtV8jr4tlB3Mj-3uwwqW928UgaKh7I6CELYTRkMFQJY5US3Hrze7iPiTJpihFiIuMP4yyulSdH2_WL7gtfiFAKHjvYZI=s919-no?authuser=0'),
(DEFAULT, 'Cookie', 'Cat', 'M', 'Domestic Shorthair', '2021-06-05', '2021-07-25', 'Give your paws up for Cookie, the sassiest little kitten you will ever meet! Cookie is a male kitten with a very strong personality! Cookie will not hold back his opinions (very vocal) and likes to show off!', 'https://lh3.googleusercontent.com/pw/AM-JKLWf8cupfdYIzokVwa3z_5bsrrCWLDk7wyQvcWnjSIAawD1Uzu8tVZUjHOVrokF9-Y61Cq7yuljsRWCsR-BMXWIFrnHjkPPPmMkWpKDK-2BoVjolIhTDpxyEp3jVycOODSAmxsymwRl3o9nRdPr7DhQ=s919-no?authuser=0'),
(DEFAULT, 'Moe', 'Cat', 'M', 'Domestic Shorthair', '2020-01-25', '2021-03-25', 'This big tabby boy with the striking yellow eyes is one big softie! He is a big fan of his human caretakers, and often will rub up against their legs and follow them around the suite. He is a very social guy, but a laid-back sort, as well.', 'https://lh3.googleusercontent.com/pw/AM-JKLUcUL1XclxA-sPwUo4wBDaVs6CInIjmPXvJDY34v9WzKER8IWXkM1HZyzWfYUEIdviX_3MhStfRB4VrpzfntVLT_d7AeFlDBLElfZVsD-nG44rrcWdnOQshzksTTPc2FEYVfKG_VaCbZ8y8llc3dL4=s919-no?authuser=0'),
(DEFAULT, 'Freddie', 'Cat', 'F', 'Domestic Shorthair', '2021-04-25', '2021-05-25', 'Freddie and her sister were stray kittens when we rescued them at a mere 3 weeks old! Now they are ready to be adopted and find a human companion that will give them an immense amount of love. Freddie is a very energetic, playful kitten but she also loves to be held and cuddled', 'https://lh3.googleusercontent.com/pw/AM-JKLU78tIFgt-ItGZELRnWbUPudRqKwBElnh1Q-GJ4bkvnOCApFz0y_Q6Q7sC0o3uHnHwcwgdKnC_z3zNPVnyvuDz6y63gYqJVxQd-p6OpeHlVKWPP33-ywjIxszutolOufnfIinAEPEe0T7I67wIYFsI=s919-no?authuser=0'),
(DEFAULT, 'Joey', 'Cat', 'M', 'Domestic Shorthair', '2021-06-15', '2021-07-15', 'Joey is my name! My brother Chandler and I were found in a rural road early one morning. We saw the human with the sweet smile and RAN to her, meowing for help! She picked us up and we cuddled her in one big group hug to make sure she knew how awesome we are.', 'https://lh3.googleusercontent.com/pw/AM-JKLXdqgAGu4YRw5GRgmTeWJGlEB-PxF8C-cwXYIHpek9JTxXNAgvWT7suRwyFMBZweRPD_6FC2QQFB-5q68Tvn1PY55RdEM8U4jXx49KTFSjzkkmDdz2dSkBrF9tTVVoVgCZjv0UP8ow-fIAegKiQ0ls=s919-no?authuser=0'),
(DEFAULT, 'Leah', 'Cat', 'F', 'Domestic Shorthair', '2017-05-19', '2017-06-19', 'Leah is a calm, elegant, and loving little lady. She loves to lounge in beds, on cat trees, and in laps. She will crawl into your lap when you sit down and purr happily as you pet her. She would love nothing more than to lounge around with a loving human all day!', 'https://lh3.googleusercontent.com/pw/AM-JKLW-lgOZ9hZ8VIExZRQV6eXxz0Pk8ce2FYfZonZnf7ymEBWTaf2k54F-K80t2adAkJXcVaDqhjp_4XIyG0dPL4rd3yjOp_0frr2c-mInEg2Xz4PEaj1ks5edgGkL_lWNCFmIOjUb1djU8FPE35tvDWM=s919-no?authuser=0'),
(DEFAULT, 'Bonita', 'Cat', 'F', 'Domestic Shorthair','2014-02-21', '2014-03-21', 'Bonita is a sweet, vocal lady seeking a comfy spot to chill in. She is used to being the queen of whatever space she is in, and she would greatly enjoy a calm home away from all the crazy kitten energy and with plenty of spaces to rest. This beautiful gray and white girl likes attention.', 'https://lh3.googleusercontent.com/pw/AM-JKLXIJLfsRfXHIoX2KYpv_7D2xwlabYbhbzQf-aqbieFu-V6fxGH9hW73b_sSJ-33lZCHi1w4BHKj5RPZ0q6vR3OwPGbeQQd5eHxt8iUV8Mgt7c4gBveVXyY4t_IelhWtavGuzDgxQR0jBl-5uLa4eFs=s919-no?authuser=0'),
(DEFAULT, 'Trick', 'Cat', 'F', 'Domestic Shorthair', '2021-08-28', '2021-09-28', 'My foster mommy says I was the first kitten in the litter to purr and as of today, I was the first in the litter to lay in her lap. I''m trusting, outgoing and very lovable.', 'https://lh3.googleusercontent.com/pw/AM-JKLU_SIae7hf-KHFkYmrN8-6YmrYbKqMa1u1D1-xz1DxkjUmC0HHpH8joc3MnvucnpnnOtt8vdqwHCrJdpIYBktL9HT-VQGYjFccAseV9tTwMmrhTLWrujuYonZegxrtdAg6KlkVHs3J9rbuF42SZkZc=s919-no?authuser=0'),
(DEFAULT, 'Treat', 'Cat', 'F', 'Domestic Shorthair','2021-08-28', '2021-09-28', 'My foster mommy thinks I am adorable because I go into a state of nirvana when she gives me belly rubs. When she is on the floor with us, I do all I can to get her attention for more belly rubs!', 'https://lh3.googleusercontent.com/pw/AM-JKLXIe4KRlwRcQ1MimEH-43isaH8oBYgv4Fv3pxsftPkItDRAq8ExdUnZqFRtjG_vGkP25--gX7Lx-T629BmU9WAhStrqfo3J7ZlUAY-RvnHyWmYIKNY4RETWdEdKM5ci9DXjL1O0OVBa8xR_qC5RlGs=s919-no?authuser=0'),
(DEFAULT, 'Elliot', 'Dog', 'M', 'Cattle Dog', '2017-08-16', '2017-09-16', 'Elliot is a beautiful, playful boy that loves people (including kids!) and does well with other dogs. Elliot came to us from a backyard breeding situation, but he''s put that behind him and looks forward to finding his furever home.', 'https://lh3.googleusercontent.com/pw/AM-JKLVYfYR3yDEngV8pbxxhn4tokWQi2gMf6dN8bEEv34-TzCWvipcOwN1d8Xxc9hXfXLAa2z4n3EHS4KzYDvsdbTdp8mTJ9TCU0bnejllHDfIgbehCI6gIw-wEAlkz0ChxTS2_A4ODgPIab1fGKZSUV-o=s919-no?authuser=0'),
(DEFAULT, 'Rex', 'Dog', 'M', 'Chihuahua-Mix', '2019-05-20', '2019-06-20', 'Rex came to us from a hoarding case, and as a result is very fearful. The good news, however, is that Rex absolutely loves peanut butter... so an adopter who has some patience and unlimited peanut butter is likely to win Rex over!', 'https://lh3.googleusercontent.com/pw/AM-JKLXJ6H7rA-03K9rIj7eJl2BiJzo2lvV_6n3vyY0xYfhTPOcF7HhHQmIRvXcnkpn8zwi7GTXHjpVU82WopL5xtv2JGbeAPEhtxzMo1Db-CQCHgnMxF8tbl26fndGgZKr04P97QlRV1yYVQtF1UslK7-I=s919-no?authuser=0'),
(DEFAULT, 'Autumn', 'Dog', 'F', 'Mixed Breed', '2019-03-31', '2019-04-30', 'Autumn is a beautiful young lady that loves to gallop around the yard and go for walks, followed by snuggles on the couch. She is a medium energy dog that is housebroken and would be happy in an apartment or a house, as long as there''s someone to give her lots of love.', 'https://lh3.googleusercontent.com/pw/AM-JKLWmwosIaUCDwTDSFa7J8PktbAdnVDS6SSMWi6kLCPTvdQRLZqDgDGuJdmDJKUa3-El_xcvrdksPZ5cNX6a6i0q5liVXtEahDQ9saosGRyPW37joNvBaYqci9sihSMlikx46E8i0tG2I5Ul67aStyQg=s919-no?authuser=0'),
(DEFAULT, 'Nash', 'Dog', 'M', 'Husky-Mix', '2017-04-28', '2017-05-28', 'We are proud to be representing Nash in his search for a forever home. He has proven to be okay with cats and good with kids. He is, however, not particularly fond of other dogs so he needs to be the only dog in his new home.', 'https://lh3.googleusercontent.com/pw/AM-JKLVlqTo0mLdqCu_pyxysps-nx5WIiGBg6Ug67YopD1CP09FepMm0dKztpxZZuIP-T_qiEnkeT-hqkylWloyj84pXeppuIBOW_eDu4dGIY2syFNYpQ4rVyk0HzdO_fUgO0iDdUWgx3mERhT0NgPFM5UA=s919-no?authuser=0'),
(DEFAULT, 'Waldo', 'Dog', 'M', 'Retriever-Lab Mix', '2020-02-22', '2020-03-22', 'Waldo is a very charming, sweet dog with soulful eyes. He loves people and gets along with other dogs. For a young dog, he is very laid back. He loves to play fetch, but he''s also happy just lounging in the sunshine with a toy.', 'https://lh3.googleusercontent.com/pw/AM-JKLXlSKZr0fqnTHKmeOGwzWcRo7gTbiufQm7CletNJ4off1bq35jPsd5U7cHKqLVlZX85siBQvcOda9Vim4Z875yT-DOhwh3MfMnuDfo_d0HthcrIDjgUYLzUrGWGAW3vWaYhOvg-pK5F5u1kk6HZvYk=s919-no?authuser=0'),
(DEFAULT, 'Layla', 'Dog', 'F', 'Mixed Breed', '2016-10-20', '2016-11-20', 'We rescued sweet Layla from a hoarding case, and soon after, we discovered that she was pregnant! She recently gave birth to her six gorgeous puppies in foster care and now she needs a loving home of her own. She is very mild mannered, quiet and well behaved.', 'https://lh3.googleusercontent.com/pw/AM-JKLW2yOXHpWZvbGSr0xMRiSelF48fhgQyOaj-rnPD94AMcsjcGbKe0Lgd9ZvVvCT3sp0mEkYpf93A39ydUDFCAiJsE_z_pHTCjjUZGc4VyipKsAm40Pu6zOxjTty8rN79G97KxRZ_Nk4GwWcKbmUSuMg=s919-no?authuser=0'),
(DEFAULT, 'Beebee', 'Dog', 'F', 'Retriever-Lab Mix', '2019-09-28', '2019-10-28', 'BeeBee is a sweet and intelligent dog recently returned to us due to no fault of her own. BeeBee would love a new family that can get her outdoors on regular basis so she can fully embrace being a dog and go on adventures!', 'https://lh3.googleusercontent.com/pw/AM-JKLX_m5VtE2KxHaJtNbrx0E-LndKDld-DTGwwRqJclgHGNXHPPIPBG6nMQGrkm1G0Kyp6S33ttPZ8FqO8KJM_UAM4h4rQGb9-c6sLzUoe4ICnj6quJDA02jV_gRZT7qT7pOpaWmsC8jjJz6TKXCdB8gg=s919-no?authuser=0'),
(DEFAULT, 'Wylie', 'Dog', 'M', 'Hound-Mix', '2015-06-16', '2015-07-16', 'Wylie has come back to us because his previous adopters had a change in living conditions that were not in Wylie''s best interest. They loved Wylie and tried everything they could to ensure that he would do well in his new accommodations, but Wylie needed more space.', 'https://lh3.googleusercontent.com/pw/AM-JKLXtSzuCFkJWTdTIcd9hbRe1h3zOOZTfWZi9nvxyKfrW-7ng80lmc9bS8gNIZuGJJcE59FsqIOGf5E68C9QRCmgBZ7h9OFGlWZOr752y_hE5CNXHCexDjT3tYG2A1FMONTte-VoTFgShnBPviqMnrv4=s919-no?authuser=0'),
(DEFAULT, 'Alphonzo', 'Dog', 'M', 'Bulldog-Mix', '2014-02-13', '2014-03-13', 'Alfonzo P is a character who definitely has his own opinions about things! He enjoys being out in the play yard and he also enjoys nap time. He is one of the lucky homeless dogs that were transported by a rescue group in Puerto Rico to us so that they could find forever homes.', 'https://lh3.googleusercontent.com/pw/AM-JKLU1o0r4HHDqTGUF6Od5-YVaWNhkQKa8TieGJlmr5mB0PTpR0o2UoIZhZ26pOZGOm86OEJJAvENbVlaU11YY5Ktcbo4vrF6fR7Jl37-ETBCe7OEwRbkTNFPfBs6VqT4SMkVzlz1Ww7344527effezlw=s919-no?authuser=0'),
(DEFAULT, 'London', 'Dog', 'F', 'Mixed Breed', '2015-05-28', '2015-06-28', 'London came to us severely malnourished with a litter of puppies. Her puppies are grown and adopted, and now London is healthy and ready for her own forever home. She is incredibly sweet and loves people of all ages, including kids!', 'https://lh3.googleusercontent.com/pw/AM-JKLWuh20xlZFv97PueJvbzxfWsYebXI-jLrMwyFt9aJGFsP2PBwc0NVwjNCvby7ww1UpR6nD92t2UB0XghrZv4ZN4svoQ1NRjYD7hsRER3qztQFRAh8Eozbzh6vHZRXNmILKxAeY2C_cZP78JE7MEsA8=s919-no?authuser=0'),
(DEFAULT, 'Bugs', 'Bunny', 'M', 'American Chinchilla', '2018-02-19', '2018-03-19', 'Bugs was rescued from a farm. He''s a chubby little guy who loves to cuddle!', 'https://lh3.googleusercontent.com/pw/AM-JKLWeFYpPVm6tA12aAyUIWnSJTbziR5qWbxOP1xicQecWsfxxTXTofkhrz-tm8ZnQ5hE7LMzakQfbwQDzOV3D4BiRhBvJvk0BIEKaRZHjeX43L7KVdDB_0SOjtp01_46qjS9J_5g5ws1ROgiELZQ-5G8=w1383-h919-no?authuser=0'),
(DEFAULT, 'Chuck', 'Guinea Pig', 'M', 'American Guinea Pig', '2021-05-27', '2021-06-27', 'Chuck was found in an abandoned home and brought to us by a concerned animal lover. He loves to eat!','https://lh3.googleusercontent.com/pw/AM-JKLUPei25XfoNEKJ57Mj5vpSq9T6RqRfbJwcmPKvma3ZGvn__CYJ88Ktqyx8-Ic5oOTFi9H5wOf7gvNu5B3VRPtV6fpldcCJ7th-M1p-DGlclStp6CzSaQD0azdCBCfwgALIf_q86D46QD_yZXcEA_-Q=w444-h600-no?authuser=0');

COMMIT TRANSACTION;