<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
	<xsl:template match="/">
		<NewDataSet>
			<DateFormatting>
				<xsl:variable name="DateToFormat" select="xs:date('2013-07-15')"/>
				<xsl:variable name="TimeToFormat" select="xs:time('08:30:00')"/>
				<xsl:variable name="DateTimeToFormat" select="xs:dateTime('2013-07-15T08:30:00')"/>
				<VariablesUsed>
					<DateToFormat>
						<xsl:value-of select="$DateToFormat"/>
					</DateToFormat>
					<TimeToFormat>
						<xsl:value-of select="$TimeToFormat"/>
					</TimeToFormat>
					<DateTimeToFormat>
						<xsl:value-of select="$DateTimeToFormat"/>
					</DateTimeToFormat>
				</VariablesUsed>
				<Defaults>
					<xsl:value-of select="format-date($DateToFormat,'[M]/[D]/[Y]')"/>
				</Defaults>
				<Month2dSlashDay2dSlashYear4d>
					<xsl:value-of select="format-date($DateToFormat,'[M01]/[D01]/[Y0001]')"/>
				</Month2dSlashDay2dSlashYear4d>
				<Month1dSlashDay1dSlashYear2d>
					<xsl:value-of select="format-date($DateToFormat,'[M1]/[D1]/[Y01]')"/>
				</Month1dSlashDay1dSlashYear2d>
				<DayOrdinalMonthNameYearAsWords>
					<xsl:value-of select="format-date($DateToFormat,'[D1o] [MNn], [YWw]')"/>
				</DayOrdinalMonthNameYearAsWords>
				<DateWordMonthNameYear>
					<xsl:value-of select="format-date($DateToFormat,'[Dwo] day of [MNn], [Y]')"/>
				</DateWordMonthNameYear>
				<DayNameMonthDayOrdinalYear>
					<xsl:value-of select="format-date($DateToFormat,'[FNn], [MNn] [D1o], [Y]')"/>
				</DayNameMonthDayOrdinalYear>
				<DayOfYear>
					<xsl:value-of select="format-date($DateToFormat,'[MNn] [D1o] is the [dwo] day of [Y]')"/>
				</DayOfYear>
				<DayOfWeekMonthNameInSpanish>
					<xsl:value-of select="format-date($DateToFormat,'[FNn], [MNn] [D1o], [Y]','es','AD','ES')"/>
				</DayOfWeekMonthNameInSpanish>
				<DayNameAbbreviation3Letter>
					<xsl:value-of select="format-date($DateToFormat,'[FNn,3-3]., [MNn] [D1o], [Y]')"/>
				</DayNameAbbreviation3Letter>
				<DayNameAbbreviation2Letter>
					<xsl:value-of select="format-date($DateToFormat,'[FNn,2-2]., [MNn] [D1o], [Y]')"/>
				</DayNameAbbreviation2Letter>
				<MonthNameAbbreviation3Letters>
					<xsl:value-of select="format-date($DateToFormat,'[MNn,3-3]. [D1o], [Y]')"/>
				</MonthNameAbbreviation3Letters>
				<MinuteOrdinalHourOrdinal>
					<xsl:value-of select="format-time($TimeToFormat,'[H]:[m] is the [m1o] minute of the [Hwo] hour')"/>
				</MinuteOrdinalHourOrdinal>
				<Time24HourClock>
					<xsl:value-of select="format-time($TimeToFormat,'[h02]:[m] - or [h02][m] in military format')"/>
				</Time24HourClock>
				<TimeWithAMorPMLowercase>
					<xsl:value-of select="format-time($TimeToFormat,'[H]:[m] can be clarified as [H]:[m] [P]')"/>
				</TimeWithAMorPMLowercase>
				<TimeWithAMorPMCapital>
					<xsl:value-of select="format-time($TimeToFormat,'[H]:[m] can be clarified as [H]:[m] [PN]')"/>
				</TimeWithAMorPMCapital>
				<TimeWithAMorPMNoPeriods>
					<xsl:value-of select="format-time($TimeToFormat,'[H]:[m] can be clarified as [H]:[m][PN,2-2]')"/>
				</TimeWithAMorPMNoPeriods>
			</DateFormatting>
		</NewDataSet>
	</xsl:template>
</xsl:stylesheet>