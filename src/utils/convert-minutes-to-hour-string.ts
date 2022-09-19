export const convertMinutesToHourString = (minutes: number) => {
  const hourString = Math.floor(minutes / 60)
    .toString()
    .padStart(2, "0");
  const minuteString = (minutes % 60).toString().padStart(2, "0");

  return `${hourString}:${minuteString}`;
};
