export const convertHourStringToMinutes = (hourString: string) => {
  const [hours, minutes] = hourString.split(":").map((string) => +string);

  return hours * 60 + minutes;
};
