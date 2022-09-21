-- CreateTable
CREATE TABLE "Widget" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),

    CONSTRAINT "Widget_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Game" (
    "id" STRING NOT NULL,
    "title" STRING NOT NULL,
    "bannerUrl" STRING NOT NULL,

    CONSTRAINT "Game_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ad" (
    "id" STRING NOT NULL,
    "gameId" STRING NOT NULL,
    "name" STRING NOT NULL,
    "yearsPlaying" INT4 NOT NULL,
    "discord" STRING NOT NULL,
    "weekDays" STRING NOT NULL,
    "hourStart" INT4 NOT NULL,
    "hourEnd" INT4 NOT NULL,
    "useVoiceChannel" BOOL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Ad_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Ad" ADD CONSTRAINT "Ad_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
